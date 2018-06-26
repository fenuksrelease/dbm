local mod	= DBM:NewMod("Ristzy", "DBM-Ulduar")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 4154 $"):sub(12, -3))
mod:SetCreatureID(570010)
mod:SetUsedIcons(1, 2, 3, 4, 5, 6, 7, 8)

mod:RegisterCombat("yell", L.YellPullRistzy)

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"SPELL_DAMAGE",
	"UNIT_SPELLCAST_SUCCEEDED",
	"UNIT_SPELLCAST_START",
	"SPELL_CAST_SUCCESS",
	"SPELL_PERIODIC_DAMAGE",
	"SPELL_AURA_APPLIED_DOSE"
)

local WarnFelFlamestrike			= mod:NewAnnounce("WarnFelFlameStrike", 2, 97256, false, "OptionFelFlameStrike")
local WarnRepairBot					= mod:NewAnnounce("specWarnRepairBot", 2)
local WarnSheepBot					= mod:NewAnnounce("specWarnSheepBot", 2)
local WarnChickenBot				= mod:NewAnnounce("specWarnChickenBot", 2)
local WarnBombBot					= mod:NewAnnounce("specWarnBombBot", 2)
local WarnFelInfusion				= mod:NewAnnounce("WarnFelInfusion", 2, 97123)
local WarnStormCloudOver		= mod:NewAnnounce("WarnStormCloudOver", 2)
local WarnStormcloudTarget		= mod:NewTargetAnnounce(97262, 2) --added 09-02-2018

local specWarnRepairBot			= mod:NewSpecialWarning("specWarnRepairBot")
local specWarnSheepBot			= mod:NewSpecialWarning("specWarnSheepBot")
local specWarnChickenBot			= mod:NewSpecialWarning("specWarnChickenBot")
local specWarnBombBot			= mod:NewSpecialWarning("specWarnBombBot")
local specWarnWorldBreaker		= mod:NewSpecialWarning("specWarnWorldBreaker")

local specWarnFelFlamestrike		= mod:NewSpecialWarningMove(97256)
local specWarnStormCloud			= mod:NewSpecialWarningMove(97262)

local timerThunderClap  			= mod:NewTimer(12 , "NextThunderClap")
local timerTimeBreaker				= mod:NewTimer(60, "NextWorldBreaker")
local timerStormCloud				= mod:NewTimer(14, "StormCloudCD")

local once = true
local first = true

function mod:OnCombatStart(delay)
	
end

function mod:UNIT_SPELLCAST_SUCCEEDED(unit, spell)
	if spell == "Thunder Clap" and unit == "boss2" then
		timerThunderClap:Start()
		if first == true then
			timerTimeBreaker:Start(48)
			first = false
		end
		
	elseif spell == "Summon Un-Repair Bot -3000" and unit == "boss1" then
		specWarnRepairBot:Show()
		WarnRepairBot:Show()
		
	elseif spell == "Summon Sheep Bot" and unit == "boss1" then
		specWarnSheepBot:Show()
		WarnSheepBot:Show()
		
	elseif spell == "Summon Chicken Bot" and unit == "boss1" then	
		specWarnChickenBot:Show()
		WarnChickenBot:Show()
		
	elseif spell == "Summon Bomb Bot" and unit == "boss1" then
		specWarnBombBot:Show()
		WarnBombBot:Show()
	
	end
end


local FelFlameStrike = {}
function mod:UNIT_SPELLCAST_START(unit,spell)
	if spell == "World Breaker" and unit == "boss2" then
		specWarnWorldBreaker:Show()
		timerTimeBreaker:Start()
		if self.Options.Announce then
			if DBM:GetRaidRank() > 0 then
				SendChatMessage(WorldBreaker_RW, "RAID_WARNING")
			end
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(97262) then -- Storm Cloud
		if args.destName == UnitName("player") then
			specWarnStormCloud:Show()
			SendChatMessage(L.StormCloud, "Yell")
		end
		if self.Options.Announce then
			if DBM:GetRaidRank() > 0 then
				SendChatMessage(args.destName.." "..Stormcloud_RW, "RAID_WARNING")
			end
		end
		
	elseif args:IsSpellID(97123) then -- Fel Infusion
		if args.amount == nil then args.amount = 0 end
		if args.amount > 35 then
			WarnFelInfusion:Show(args.destName, args.amount or 1)
		end
		
	elseif args:IsSpellID(97256) then -- Fel Flamestrike
		table.insert(FelFlameStrike, args.destName)
		self:UnscheduleMethod("AnnounceFlameStrikeTargets")
		self:ScheduleMethod(0.5, "AnnounceFlameStrikeTargets")
		if args.destName == UnitName("player") then
			specWarnFelFlamestrike:Show()
		end
	end
end

function mod:AnnounceFlameStrikeTargets()
	WarnFelFlamestrike:Show(table.concat(FelFlameStrike, "< >"))
	for i = #FelFlameStrike, 1, -1 do
		self:SetIcon(FelFlameStrike[i], 8 - i, 4.5) 
		FelFlameStrike[i] = nil
	end
end


function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(97262) then -- Storm Cloud
		WarnStormCloudOver:Show()
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED