local mod	= DBM:NewMod("Grommash_Hellscream", "DBM-Ulduar")
local L		= mod:GetLocalizedStrings()
mod:SetRevision(("$Revision: 4133 $"):sub(12, -3))
mod:SetCreatureID(570083)

mod:RegisterCombat("yell", L.YellPullGrommash)

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"UNIT_SPELLCAST_SUCCEEDED",
	"UNIT_SPELLCAST_START"
)

local warnBerserker					= mod:NewSpecialWarning("warnBerserkerStance")
local warnBattle						= mod:NewSpecialWarning("warnBattleStance")

local specWarnWhirldWind		= mod:NewSpecialWarning("specWhirldWind")

local timerBerserker 				= mod:NewTimer(60, "nextBerserkerStance", 97222)
local timerBattle 					= mod:NewTimer(60, "nextBattleStance", 97221)
local timerWhirlwind				= mod:NewTimer(7.5, "nextWhirlwind", 1680)
local timerBladestorm				= mod:NewTimer(9, "nextBladestorm", 46924)

--[[
		Stance 1 = Beserker Stance
		Stance 2 = Battle Stance
--]]
local stance = 1 

function mod:OnCombatStart(delay)	
	timerBerserker:Start()
	self:ScheduleMethod(60, "StanceSwitch")
	warnBattle:Show()
	timerWhirlwind:Start(10)
end

function mod:StanceSwitch()
	if stance == 1 then
		timerBattle:Start()
		stance = 2
		self:ScheduleMethod(60, "StanceSwitch")
		warnBerserker:Show()
		timerWhirlwind:Stop()
		timerBladestorm:Start(10)
	elseif stance == 2 then
		timerBerserker:Start()
		stance = 1
		self:ScheduleMethod(60, "StanceSwitch")
		warnBattle:Show()
		timerBladestorm:Stop()
		timerWhirlwind:Start(10.5)
	end
end

function mod:UNIT_SPELLCAST_SUCCEEDED(unit,spell)
	if spell == "Whirlwind" and unit == "boss1" then 
			timerWhirlwind:Start()
	elseif spell == "Bladestorm" and unit == "boss1" then
			timerBladestorm:Start()
	end
end

function mod:UNIT_SPELLCAST_START(unit,spell)
	if spell == "Whirlwind" and unit == "boss1" then
		--SendChatMessage("RUN LITTLE MELONS!!! RUN!!!!", "RAID_WARNING")
		specWarnWhirldWind:Show()
	end
end