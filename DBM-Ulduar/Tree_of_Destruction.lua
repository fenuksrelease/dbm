local mod	= DBM:NewMod("Tree_of_Destruction", "DBM-Ulduar")
local L		= mod:GetLocalizedStrings()
mod:SetUsedIcons(1, 2, 3, 4, 5, 6, 7, 8)
mod:SetRevision(("$Revision: 4133 $"):sub(12, -3))
mod:SetCreatureID(570086)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"UNIT_SPELLCAST_START",
	"SPELL_AURA_APPLIED_DOSE"
)

local WarnBurning						= mod:NewAnnounce("BurningFlesh", 2, 97342)
local WarnBurningSwitch				= mod:NewAnnounce("BurningFleshSwitch", 4, 97342)
local WarnSummonAdds				= mod:NewAnnounce("SummonedAdds", 1)
local WarnFireBomb						= mod:NewTargetAnnounce(97344, 2)
local WarnConflagrate					= mod:NewTargetAnnounce(97353, 2)

local specWarnFireBomb				= mod:NewSpecialWarning("specWarnFireBomb")
local SpecWarnIgnitingNovah		= mod:NewSpecialWarning("specIgnitingNova")


local timerSummonAdds				= mod:NewTimer(50, "NextSummonAdds")
local timerIgnitingNova				= mod:NewTimer(80, "NextIgnitingNova")

local countdown							= mod:NewCountdown(5, 97344)

local timercountdown					=mod:NewTimer(10, "LivingBombFade")





FirstAddWave = true
function mod:OnCombatStart()	
	timerSummonAdds:Start(32)
	self:ScheduleMethod(32, "Adds")
	timerIgnitingNova:Start()
	FirstAddWave = true -- should fix it timer in case of a wipe :-)
end


function mod:CountDown()
	countdown:Start()
end


function mod:Adds()
	if FirstAddWave == true then
		WarnSummonAdds:Show()
		timerSummonAdds:Start(55.5)
		self:ScheduleMethod(55.5, "Adds")
		FirstAddWave = false
		if self.Options.Announce then
				if DBM:GetRaidRank() > 0 then
					SendChatMessage(DesAdds_RW, "RAID_WARNING")
				end
			end
	else
		WarnSummonAdds:Show()
		timerSummonAdds:Start()
		self:ScheduleMethod(50, "Adds")
		if self.Options.Announce then
			if DBM:GetRaidRank() > 0 then
				SendChatMessage(DesAdds_RW, "RAID_WARNING")
			end
		end
	end
end


local LivingBomb = {}
function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(97342) then -- Burning Flesh
		if args.amount == nil then args.amount = 0 end
		if args.amount >= 2 and args.amount <= 4 then
			WarnBurning:Show(args.destName, args.amount)
		elseif args.amount >= 5 then
			WarnBurningSwitch:Show(args.destName, args.amount)
		end

	elseif args:IsSpellID(97344) then -- Fire Bomb
		table.insert(LivingBomb, args.destName)
		self:UnscheduleMethod("AnnounceLivingBombTargets")
		self:ScheduleMethod(0.5, "AnnounceLivingBombTargets")
		
		if self.Options.Announce then
			if DBM:GetRaidRank() > 0 then
				SendChatMessage(args.destName.." "..LivingBomb_RW, "RAID_WARNING")
			end
		end
		if args.destName == UnitName("player") then
			timercountdown:Start()
			specWarnFireBomb:Show()
			self:ScheduleMethod(5, "CountDown")
		end

	elseif args:IsSpellID(97353) then -- Conflagrate
		WarnConflagrate:Show(args.destName)
	end	
end

function mod:AnnounceLivingBombTargets()
	WarnFireBomb:Show(table.concat(LivingBomb, "< >"))
	for i = #LivingBomb, 1, -1 do
		self:SetIcon(LivingBomb[i], 8 - i, 4.5) 
		LivingBomb[i] = nil
	end
end

function mod:UNIT_SPELLCAST_START(unit,spell)
	if spell == "Igniting Nova"  and unit == "boss1" then
		SpecWarnIgnitingNovah:Show()
		timerIgnitingNova:Start()
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED