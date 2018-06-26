local mod	= DBM:NewMod("Tree_of_Life", "DBM-Ulduar")
local L		= mod:GetLocalizedStrings()


mod:SetRevision(("$Revision: 2248 $"):sub(12, -3))
mod:SetCreatureID(570084)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_SUMMON",
	"SPELL_AURA_APPLIED_DOSE",
	"UNIT_SPELLCAST_START"
)

local WarnBranchSwipe  				= mod:NewAnnounce("BranchSwipe", 2, 97312)
local WarnBranchSwipeSwitch		= mod:NewAnnounce ("BranchSwipeSwitch", 4, 97312)
local WarnSummonAdds				= mod:NewAnnounce("SummonedAdds", 1)
local warnBarskin						= mod:NewAnnounce("warningBarskin", 2)

local SpecWarnHealingTouch			= mod:NewSpecialWarning("SpecHealingTouch")



local timerSummonAdds				= mod:NewTimer(50, "NextSummonAdds")
local timerBarksin						= mod:NewTimer(80, "NextBarksin")
local timerHealingTouch				= mod:NewTimer(85, "NextHealingTouch")

AddsReset = false
function mod:OnCombatStart()	
	timerSummonAdds:Start(32)
	timerBarksin:Start()
	timerHealingTouch:Start()
end

function mod:Adds()
	AddsReset = false
end

function mod:SPELL_SUMMON(args)
	if args:IsSpellID(97318) then -- Adds
		if AddsReset == false then 
			WarnSummonAdds:Show()
			if self.Options.Announce then
				if DBM:GetRaidRank() > 0 then
					SendChatMessage(LifeAdds_RW, "RAID_WARNING")
				end
			end
			timerSummonAdds:Start()
			AddsReset = true 
			self:ScheduleMethod(5, "Adds")
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(97310) then -- Barskin
			warnBarskin:Show()
			timerBarksin:Start()
	
	elseif args:IsSpellID(97312) then
		if args.amount == nil then args.amount = 0 end
		if args.amount >= 9 and args.amount <= 12 then
			WarnBranchSwipe:Show(args.destName, args.amount)
		elseif args.amount >= 13 then
			WarnBranchSwipeSwitch:Show(args.destName, args.amount)
		end
	end
end

function mod:UNIT_SPELLCAST_START(unit,spell)
	if spell == "Healing Touch"  and unit == "boss1" then
		SpecWarnHealingTouch:Show()
		timerHealingTouch:Start()
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED