local mod	= DBM:NewMod("Jesper", "DBM-Ulduar")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 4133 $"):sub(12, -3))
mod:SetCreatureID(570009)

mod:RegisterCombat("yell", L.YellPullJesp)

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED",
	"SPELL_CAST_SUCCESS",
	"SPELL_SUMMON",
	"SPELL_PERIODIC_DAMAGE",
	"SPELL_AURA_APPLIED_DOSE"
)

local WarnFireBlast  					= mod:NewAnnounce("FireBlast", 2, 97109)
local WarnFireBomb  					= mod:NewAnnounce("FireBomb", 2, 97103)
local WarnFlameJets 					= mod:NewAnnounce("FlameJets", 2, 97097)
local WarnManaFlameBurst			= mod:NewAnnounce("FlameBurst", 2, 97096)
local WarnFieryBoulder					= mod:NewAnnounce("FieryBoulder", 2, 97111)
local WarnFlamingAbyssal			= mod:NewAnnounce("FlamingAbyssal", 2)
local WarnMoltenGiant					= mod:NewAnnounce("MoltenGiant", 1)

local specWarnFireBomb				= mod:NewSpecialWarning("SpecWarnFireBomb")
local specWarnFireShield				= mod:NewSpecialWarning("SpecWarnFireShield")
local specWarnFlameJets				= mod:NewSpecialWarning("SpecWarnFlameJets")
local specWarnStone					= mod:NewSpecialWarning("SpecWarnStone")
local specFieryBoulder					= mod:NewSpecialWarning("SpecWarnFieryBoulder")

local timerMoltenGiant					= mod:NewCastTimer(60, 97107)
local timerFireShield					= mod:NewTimer(45, "NextFireShield", 97105)
local timerPyroBlast						= mod:NewTimer(10, "NextPyroblast", 97106)
local timerStone							= mod:NewTimer(30, "StoneDuration", 97095)
local timerFlamingAbyssal			= mod:NewTimer(30, "NextFlamingAbyssal")



function mod:OnCombatStart(delay)	
	timerMoltenGiant:Start()
	self:ScheduleMethod(60, "MoltenGiant")
	timerFireShield:Start()
	timerFlamingAbyssal:Start()
	self:ScheduleMethod(30, "FlamingAbyssal")
end

function mod:FlamingAbyssal()
	WarnFlamingAbyssal:Show()
	timerFlamingAbyssal:Start()
	self:ScheduleMethod(30, "FlamingAbyssal")
end

function mod:MoltenGiant()
	WarnMoltenGiant:Show()
	timerMoltenGiant:Start()
	self:ScheduleMethod(60, "MoltenGiant")
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(97109) then -- Fire Blast
		--if args.destName == UnitName("player") then
			WarnFireBlast:Show(args.destName, args.amount or 1)
		--end
	elseif args:IsSpellID(97105) then -- Fire Shield
		timerFireShield:Start()
		timerPyroBlast:Start()
		specWarnFireShield:Show()
	
	
	elseif args:IsSpellID(97103) then -- Fire Bomb
		if args.destName == UnitName("player") then
			specWarnFireBomb:Show()
		end
		WarnFireBomb:Show(args.destName)
		
	elseif args:IsSpellID(97111) then -- Fiery Boulder
		if args.destName == UnitName("player") then
			specFieryBoulder:Show()
		end
		WarnFieryBoulder:Show(args.destName)
		
	elseif args:IsSpellID(97097) then -- Flame Jets
		if args.destName == UnitName("player") then
			specWarnFlameJets:Show()
		end
		WarnFlameJets:Show(args.destName)
		
	elseif args:IsSpellID(97095) then -- Stone (water stun)
		if args.destName == UnitName("player") then
			SendChatMessage(L.Stone, "Yell")
			timerStone:Start()
			specWarnStone:Show()
		end
		
		
	elseif args:IsSpellID(97096) then -- Mana Flame Burst
		WarnManaFlameBurst:Show(args.destName, args.amount or 1)
	
	end
end



mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED