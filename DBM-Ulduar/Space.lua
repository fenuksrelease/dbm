local mod	= DBM:NewMod("Azeroth", "DBM-Ulduar")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 2248 $"):sub(13, -2))

mod:SetCreatureID(570133)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_APPLIED_DOSE",
	"SPELL_SUMMON",
	"UNIT_HEALTH",
	"SPELL_CAST_START"
)

local specWarnStarCollapse		= mod:NewSpecialWarning("WarnStarCollapse")
local specWarnBlackHole			= mod:NewSpecialWarning("WarnBlackHole")
local specWarnConstelation		= mod:NewSpecialWarning("WarnConstelation")

local timerCollapsingStar		= mod:NewTimer(25, "NextCollapsingStar")
local timerBlackhole			= mod:NewTimer(20, "NextBlackhole")
local timerConstelation		= mod:NewTimer(44, "NextConstelation")


local blackhole = false
function mod:OnCombatStart(delay)
	timerCollapsingStar:Start(12-delay)
	timerBlackhole:Start(21-delay)
	timerConstelation:Start(45-delay)
	self:ScheduleMethod(45-delay, "Constelation")
end

function mod:Constelation()
	specWarnConstelation:Show()
	timerConstelation:Start()
	self:ScheduleMethod(44, "Constelation")
end

function mod:ResetBlackhole()
	-- Reset blackHole timer for next announce
	blackhole = false
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(97275) then -- Star Collapse
		specWarnStarCollapse:Show()
		timerCollapsingStar:Start()
		
	elseif args:IsSpellID(97305) then -- Black Hole	
		if blackhole == false then 
			specWarnBlackHole:Show()
			-- Show warning only once when the blackHole has been spawned and start restart in 15seconds (5seconds before new blackhole)
			blackhole = true 
			self:ScheduleMethod(15, "ResetBlackhole")
			timerBlackhole:Start()
		end
	end
end