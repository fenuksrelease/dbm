local mod	= DBM:NewMod("Chillich", "DBM-Ulduar")
local L		= mod:GetLocalizedStrings()
mod:SetUsedIcons(1, 2, 3, 4, 5, 6, 7, 8)
mod:SetRevision(("$Revision: 4133 $"):sub(12, -3))
mod:SetCreatureID(570082)

mod:RegisterCombat("yell", L.YellPullChillich)

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED",
	"SPELL_CAST_SUCCESS",
	"SPELL_SUMMON",
	"SPELL_PERIODIC_DAMAGE",
	"SPELL_AURA_APPLIED_DOSE",
	"UNIT_SPELLCAST_START",
	"UNIT_DIED",
	"SPELL_AURA_REMOVED"
)

local specWarnIceBlock			= mod:NewSpecialWarning("specWarnIceBlock")
local specWarnBlisteringCold	= mod:NewSpecialWarning("specWarnBlisteringCold")

local WarnNecromancy 	= mod:NewAnnounce("Necromancy", 3)
local WarnIceBlock 			= mod:NewAnnounce("WarnIceBlock", 2, 97208, false, "OptionIceBlock")
local WarnBlizzard			= mod:NewAnnounce("WarnBlizzard", 3, 97266)

local timerNecromancy		= mod:NewTimer(90, "NextNecromancy")
local timerEntomb			= mod:NewTimer(40, "NextEntomb")

local once = false
local SoulWeaver = 0

function mod:OnCombatStart(delay)	
	timerNecromancy:Start(70)
	self:ScheduleMethod(70, "NecromancyPhase")
	timerEntomb:Start()
	once = false
	local SoulWeaver = 0
end

function mod:NecromancyPhase()
	WarnNecromancy:Show()
end

function mod:BlizzardReset()
	once = false
end


local IceBlocks = {}
function mod:UNIT_SPELLCAST_START(unit,spell)
	if spell == "Blistering Cold"  and unit == "boss1" then
		--SendChatMessage("RUN BEHIND ICEBLOCKS LITTLE MELONS!!! RUN!!!", "RAID_WARNING")
		specWarnBlisteringCold:Show()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(97208) then -- Entomb
		table.insert(IceBlocks, args.destName)
		self:UnscheduleMethod("AnnounceIceBlockTargets")
		self:ScheduleMethod(0.5, "AnnounceIceBlockTargets")
		if args.destName == UnitName("player") then
			specWarnIceBlock:Show()
		else
			WarnIceBlock:Show()
		end
	end
end

function mod:AnnounceIceBlockTargets()
	WarnIceBlock:Show(table.concat(IceBlocks, "< >"))
	for i = #IceBlocks, 1, -1 do
		self:SetIcon(IceBlocks[i], 8 - i, 4.5) 
		IceBlocks[i] = nil
	end
end

function mod:SPELL_CAST_SUCCESS(args)

	if args:IsSpellID(97266) then -- Blizzard
		if once == false then
			--SendChatMessage("Watch out for the Blizzard!", "RAID_WARNING")
			WarnBlizzard:Show()
			once = true
			self:ScheduleMethod(45, "BlizzardReset")
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(97213) then
		timerNecromancy:Start()
	end
end

--[[
function mod:UNIT_DIED(args)
	if bit.band(args.destGUID:sub(0, 5), 0x00F) == 3 then
		local guid = tonumber(args.destGUID:sub(8, 12), 16)
		if guid == 570102 then -- Soul Weaver
			SoulWeaver = SoulWeaver + 1
				if SoulWeaver == 4 then
					timerNecromancy:Start()
					self:ScheduleMethod(99, "NecromancyPhase")
				end
		end
	end
end
--]]

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED