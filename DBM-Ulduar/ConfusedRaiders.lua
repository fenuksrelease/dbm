local mod	= DBM:NewMod("Confusedraiders", "DBM-Ulduar")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 2248 $"):sub(12, -3))
mod:SetCreatureID(570106)

mod:RegisterCombat("yell", L.pull)

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED",
	"SPELL_CAST_SUCCESS",
	"UNIT_DIED"
)

mod:AddBoolOption("HealthFrame", true)

mod:SetBossHealthInfo(
	570113, L.Jinha,
	570109, L.Shaeria,
	570108, L.Kurmak
)


local WarnHex				= mod:NewSpecialWarning("WarnHex")
local WarnFear				= mod:NewAnnounce("WarnFear", 2)
local WarnShadowfury		= mod:NewAnnounce("WarnShadowfury", 2)
local WarnHexTarget		= mod:NewTargetAnnounce(97170, 2)

local timerHex				= mod:NewNextTimer(35, 97170)
local timerFear				= mod:NewNextTimer(32, 97204)
local timerShadowfury		= mod:NewNextTimer(20, 97178)


function mod:OnCombatStart(delay)
	timerHex:Start()
	self:ScheduleMethod(35, "Hex")
	timerFear:Start(31)
	self:ScheduleMethod(31, "Scream")
	timerShadowfury:Start(43)
	self:ScheduleMethod(43, "Fury")
end

function mod:Hex()
	self:ScheduleMethod(35, "Hex")
	timerHex:Start()
end

function mod:Scream()
	WarnFear:Show()
	self:ScheduleMethod(32, "Scream")
	timerFear:Start()
end

function mod:Fury()
	WarnShadowfury:Show()
	self:ScheduleMethod(20, "Fury")
	timerShadowfury:Start()
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(97170) then	-- Shaman Hex
		
		WarnHexTarget:Show(args.destName)
		if args.destName == UnitName("player") then
			WarnHex:Show()
		end
		
	elseif args:IsSpellID(97204) then -- Psychic Scream
		print("test Psychic")
		
		elseif args:IsSpellID(97178) then -- Shadowfury
		print("test Shadow")
	end
end

function mod:UNIT_DIED(args)
	if bit.band(args.destGUID:sub(0, 5), 0x00F) == 3 then
		local guid = tonumber(args.destGUID:sub(8, 12), 16)
		if guid == 570108 then -- Phantasm
			timerFear:Cancel()
			self:UnscheduleMethod("Scream")
		end
	end
end