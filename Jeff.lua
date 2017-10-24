local mod	= DBM:NewMod("Jeff", "DBM-Ulduar")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 4133 $"):sub(12, -3))
mod:SetCreatureID(570008)
mod:SetUsedIcons(6)

mod:RegisterCombat("yell", L.YellPullJeff)

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_DAMAGE",
	"UNIT_TARGET",
	"CHAT_MSG_MONSTER_YELL",
	"CHAT_MSG_RAID_BOSS_EMOTE",
	"SPELL_PERIODIC_DAMAGE",
	"SPELL_SUMMON",
	"UNIT_SPELLCAST_START",
	"SPELL_AURA_REMOVED",
	"SPELL_INSTAKILL"
)

local WarnRainOfFire				= mod:NewAnnounce("WarnRainOfFire", 2, 97245, false, "OptionRainOfFire")
local WarnRainOfFireSelf			= mod:NewAnnounce("RainofFire", 2)
local WarnSummonIMP				= mod:NewAnnounce("SummonedImps", 2)
local WarnSummonVoid			= mod:NewAnnounce("SummonedVoidwalkers", 2)
local WarnSummonSuccubus		= mod:NewAnnounce("SummonedSuccubus", 2)
local WarnSummonFelhunter		= mod:NewAnnounce("SummonedFelhunters", 2)
local WarnSummonFelguard		= mod:NewAnnounce("SummonedFelguard", 2)
local WarnShadowVolley			= mod:NewAnnounce("ShadowBoltVolley", 3)
local WarnNetherProtectionS		= mod:NewAnnounce("NetherProtectionDrop", 1 , 97071)
local WarnNetherProtection 		= mod:NewAnnounce("NetherProtectionOff", 3 , 97071)

local specWarnRainOfFire			= mod:NewSpecialWarningMove(97245)
local specWarnShadowVolley	= mod:NewSpecialWarningMove(97244)

local timerSummonImp			= mod:NewTimer(38, "NextSummonImp", 97072)
local timerSummonVoidwalker	= mod:NewTimer(58, "NextSummonVoidwalker", 97075)
local timerSummonSuccubus		= mod:NewTimer(75, "NextSummonSuccubus", 97080)
local timerSummonFelhunter		= mod:NewTimer(60, "NextSummonFelhunter", 97083)
local timerSummonFelguard		= mod:NewTimer(110, "NextSummonFelguard", 97086)
local timerRainofFire				= mod:NewTimer(35, "NextRainFire", 97245)
local timerNetherProtection		= mod:NewTimer(60, "NetherProtection", 97071)
local timerShadowVolley			= mod:NewTimer(49, "NextShadowVolley", 97244)


local impmsg 			= true
local voidwalkmsg	= true
local succubusmsg	= true
local felhuntermsg	= true
local felguardmsg	= true

function mod:OnCombatStart(delay)
	timerSummonImp:Start(25)
	timerSummonVoidwalker:Start(45)
	timerSummonFelguard:Start(80)
	timerSummonSuccubus:Start()
	timerSummonFelhunter:Start()
	timerRainofFire:Start(36)
	self:ScheduleMethod(36, "RainOfFire")
	--timerFear:Start()
	WarnNetherProtectionS:Schedule(45)
	timerNetherProtection:Start()
	timerShadowVolley:Start(51)
	self:ScheduleMethod(51, "ShadowVolley")
end

function mod:UNIT_SPELLCAST_START(unit,spell)
	if spell == "Shadow Bolt Volley" and unit == "boss1" then
		specWarnShadowVolley:Show()
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(97071) then -- Nether Protection
		WarnNetherProtection:Show()
	end
end

function mod:SPELL_PERIODIC_DAMAGE(args)
	if args:IsSpellID(97245) then
		WarnRainOfFire:Show(args.destName)
		if args.destName == UnitName("player") then
			specWarnRainOfFire:Show()
		end
	end
end

function mod:RainOfFire()
	WarnRainOfFireSelf:Show()
	timerRainofFire:Start()
	self:ScheduleMethod(35, "RainOfFire")
end

function mod:ShadowVolley()
	timerShadowVolley:Start()
	self:ScheduleMethod(49, "ShadowVolley")
end

function mod:ResetImpSummon()
	impmsg = true
end

function mod:ResetVoidSummon()
	voidwalkmsg = true
end

function mod:ResetSuccubusSummon()
	succubusmsg = true
end

function mod:ResetFelhunterSummon()
	felhuntermsg = true
end

function mod:ResetFelguardSummon()
	felguardmsg = true
end

function mod:SPELL_SUMMON(args)
	if args:IsSpellID(97072) then
		if impmsg == true then
			WarnSummonIMP:Show()
			timerSummonImp:Start()
		end
			impmsg = false
			self:ScheduleMethod(5, "ResetImpSummon")
			
	elseif args:IsSpellID(97075) then
		if voidwalkmsg == true then
			WarnSummonVoid:Show()
			timerSummonVoidwalker:Start()
		end
			voidwalkmsg = false
			self:ScheduleMethod(5, "ResetVoidSummon")
			
	elseif args:IsSpellID(97080) then
		if succubusmsg == true then
			WarnSummonSuccubus:Show()
			timerSummonSuccubus:Start()
		end
			succubusmsg = false
			self:ScheduleMethod(5, "ResetSuccubusSummon")
			
		elseif args:IsSpellID(97083) then
		if felhuntermsg == true then
			WarnSummonFelhunter:Show()
			timerSummonFelhunter:Start()
		end
			felhuntermsg = false
			self:ScheduleMethod(5, "ResetFelhunterSummon")
			
		elseif args:IsSpellID(97086) then
		if felguardmsg == true then
			WarnSummonFelguard:Show()
			timerSummonFelguard:Start()
		end
			felguardmsg = false
			self:ScheduleMethod(5, "ResetFelguardSummon")
	end
end

function mod:SPELL_INSTAKILL(args)
	if args:IsSpellID(97244) then -- Shadow Bolt Volley
		if args.destName == UnitName("player") then
			SendChatMessage(L.VolleyKill, "RAID")
		end
	end
end