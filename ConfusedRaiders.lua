local mod	= DBM:NewMod("Confusedraiders", "DBM-Ulduar")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 2248 $"):sub(12, -3))
mod:SetCreatureID(570106)

mod:RegisterCombat("yell", L.pull)
--mod:RegisterCombat("combat", 570106)

--[[
	Shaman: Hex - Transforms the enemy into a frog for 10 sec. Dispellable. Casted every 35 sec on a random target.
	Priest: Psychic Scream - Fears up to 5 enemies within 8 yards for 8 sec. Casted every 30 sec.
	Warlock: Shadowfury - Does low Shadow damage and stuns all enemies in the target area within 8 yards for 3 sec. Casted every 20 sec on a random target.

--]]

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED",
	"SPELL_CAST_SUCCESS"
)

mod:AddBoolOption("HealthFrame", false)

mod:SetBossHealthInfo(
	570106, "Oberon",
	570107, L.Jimmy,
	570108, L.Phantasm,
	570109, L.Jinha,
	570110, L.Nexxi,
	570111, L.Disengagelol,
	570112, L.Osiris,
	570113, L.Shaeria,
	570114, L.Kurmak,
	570115, L.Gummyboi
)


local WarnHex				= mod:NewSpecialWarning("WarnHex")
local WarnHexTarget		= mod:NewAnnounce("WarnHexTarget", 2, 97170, true, "OptionWarnHexTarget")
local WarnFear				= mod:NewAnnounce("WarnFear", 4)
local WarnShadowfury		= mod:NewAnnounce("WarnShadowfury", 4)


local timerHex				= mod:NewNextTimer(35, 97170)
local timerFear				= mod:NewNextTimer(32, 97204)
local timerShadowfury		= mod:NewNextTimer(20, 97178)




function mod:OnCombatStart(delay)
	timerHex:Start()
	timerFear:Start()
	timerShadowfury:Start(42)
end
--[[
function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(97170) then	-- Shaman Hex
		timerHex:Start()
		WarnHexTarget:Show(args.destName)
		if args.destName == UnitName("player") then
			WarnHex:Show()
		end
		
		
	elseif args:IsSpellID(97204) then -- Psychic Scream
		WarnFear:Show()
		timerFear:Start()
		
		elseif args:IsSpellID(97178) then -- Shadowfury
		WarnShadowfury:Show()
		timerShadowfury:Start()
	
	end
end
]]
