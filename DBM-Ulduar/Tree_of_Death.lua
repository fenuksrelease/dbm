local mod	= DBM:NewMod("Tree_of_Death", "DBM-Ulduar")
local L		= mod:GetLocalizedStrings()


mod:SetRevision(("$Revision: 4133 $"):sub(12, -3))
mod:SetCreatureID(570085)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"UNIT_SPELLCAST_START",
	"SPELL_AURA_APPLIED_DOSE"
)

local WarnSoulShatter					= mod:NewAnnounce("SoulShatter", 2, 97328)
local WarnSoulShatterSwitch			= mod:NewAnnounce("SoulShatterSwitch", 4, 97328)
local WarnVoidBlast					= mod:NewTargetAnnounce(97330, 2)
local WarnSummonAdds				= mod:NewAnnounce("SummonedAdds", 1)
local SpecWarnDeathNova			= mod:NewSpecialWarning("specDeathNova")

local timerSummonAdds				= mod:NewTimer(50, "NextSummonAdds")
local timerDeathNova					= mod:NewTimer(80, "NextDeathNova")
local timerVoidBlast					= mod:NewTimer(13, "NextVoidBlast")



FirstAddWave = true
function mod:OnCombatStart()	
	timerSummonAdds:Start(32)
	self:ScheduleMethod(32, "Adds")
	timerDeathNova:Start()
	timerVoidBlast:Start()
	FirstAddWave = true
end

function mod:Adds()
	if FirstAddWave == true then
		WarnSummonAdds:Show()
		timerSummonAdds:Start(53)
		self:ScheduleMethod(53, "Adds")
		FirstAddWave = false
		if self.Options.Announce then
			if DBM:GetRaidRank() > 0 then
				SendChatMessage(DeathAdds_RW, "RAID_WARNING")
			end
		end
	else
		WarnSummonAdds:Show()
		timerSummonAdds:Start(50)
		self:ScheduleMethod(50, "Adds")
		if self.Options.Announce then
			if DBM:GetRaidRank() > 0 then
				SendChatMessage(DeathAdds_RW, "RAID_WARNING")
			end
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(97334) then -- Treant of Death
		timerSummonAdds:Start()
		WarnSummonAdds:Show()

	elseif args:IsSpellID(97330) then -- Void Blast
		WarnVoidBlast:Show(args.destName)
		timerVoidBlast:Start()
	end	
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(97328) then -- Find Soul Shatter
		if args.amount == nil then args.amount = 1 end
		if args.amount >= 1 and args.amount <= 2 then
			WarnSoulShatter:Show(args.destName, args.amount)
		elseif args.amount >= 3 then
			WarnSoulShatterSwitch:Show(args.destName, args.amount)
			if self.Options.Announce then
				if DBM:GetRaidRank() > 0 then
					SendChatMessage(args.destName.. " "..SoulShatter_RW.." "..args.amount.." stacks!", "RAID_WARNING")
				end
			end
			
		end
	end
end

function mod:UNIT_SPELLCAST_START(unit,spell)
	if spell == "Death Nova" and unit == "boss1" then
		SpecWarnDeathNova:Show()
		timerDeathNova:Start()
		if self.Options.Announce then
				if DBM:GetRaidRank() > 0 then
					SendChatMessage(DeathNova_RW, "RAID_WARNING")
				end
			end
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED