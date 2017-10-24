local mod	= DBM:NewMod("Ian", "DBM-Ulduar")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 4181 $"):sub(12, -3))

mod:SetCreatureID(570007)
mod:SetUsedIcons(6)

mod:RegisterCombat("yell", L.YellPull)

mod:RegisterEvents(
	"SPELL_AURA_REMOVED",
	"SPELL_AURA_APPLIED",
	"SPELL_HEAL",
	"CHAT_MSG_MONSTER_YELL",
	"SPELL_CAST_START",
	"SPELL_INSTAKILL",
	"SPELL_AURA_APPLIED_DOSE",
	"UNIT_SPELLCAST_SUCCEEDED",
	"SPELL_CAST_SUCCESS"
)


local WarnBroken				= mod:NewAnnounce("Broken", 2, 97010)
local WarnExposeWeakness	= mod:NewAnnounce("ExposeWeakness", 2, 97238)
local warnBombAway			= mod:NewAnnounce("BombSpawned", 4)

local WarnGravityBomb		= mod:NewTargetAnnounce(97240, 2)

local WarnBotsoon				= mod:NewSoonAnnounce(64398, 3)

local specWarnGravityBomb	= mod:NewSpecialWarning("GravityBomb")
local warnBossHeal				= mod:NewSpecialWarning("warnHealBoss")
local WarnAirStrike				= mod:NewSpecialWarning("WarnAirStrike")
local WarnBotsNow				= mod:NewSpecialWarning("WarnBots")


local timerBomb					= mod:NewNextTimer(10, 97013)
local timerThunderClap		= mod:NewNextTimer(20, 97012)
local timerNextBroken			= mod:NewNextTimer(8, 97010)
local timerCapacitor				= mod:NewNextTimer(20, 97009)
local timerAirStrike				= mod:NewTimer(30, "NextAirStrike")
local timerBots					= mod:NewTimer(60, "NextScrapBots")



mod:AddBoolOption("RangeFrame")
mod:AddBoolOption("PlaySoundOnBombAway")
mod:AddBoolOption("PlaySoundOnGravityBomb")
mod:AddBoolOption("PlaySoundOnAirStrike")


local once = true

function mod:OnCombatStart(delay)	
	timerThunderClap:Start()
	self:ScheduleMethod(10, "BombAway")
	timerBomb:Start(10)
	timerBots:Start(60)
	timerNextBroken:Start(8)
	WarnBotsoon:Schedule(50)
	timerCapacitor:Start(15)
end

function mod:ResetAirstrike()
	once = true
end

function mod:NextAirStrike()
	timerAirStrike:Start()
	self:ScheduleMethod(30, "NextAirStrike")
end

function mod:BombAway()
	warnBombAway:Show()
	timerBomb:Start(10)
	self:ScheduleMethod(10, "BombAway")
		if self.Options.PlaySoundOnBombAway then
			PlaySoundFile("Sound\\Creature\\AlgalonTheObserver\\UR_Algalon_BHole01.wav")	
		end	
end

function mod:UNIT_SPELLCAST_SUCCEEDED(unit, spell)
	if spell == "Capacitor Discharge" and unit == "boss1" then
		timerCapacitor:Start()
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(97012) then
		timerThunderClap:Start()
	end
end

function mod:SPELL_HEAL(args)
	if args:IsSpellID(97237) then 
		warnBossHeal:Show()
	end
end


function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(97238) then	-- Expose Weakness
		if args.destName == UnitName("player") then
			WarnExposeWeakness:Show(args.destName, args.amount or 1)
		end
		
	elseif args:IsSpellID(97003) then -- Fully Heated
		timerAirStrike:Start()
		self:ScheduleMethod(30, "NextAirStrike")

	elseif args:IsSpellID(97013) then -- Bombs away
		warnBombAway:Show(args.destName)
		if args.destName == UnitName("player") then
			SendChatMessage(L.YellBombMe, "YELL")
		end
		
	elseif args:IsSpellID(97010) then		-- Broken (tanks only debuff)
		if args.destName == UnitName("player") then
			WarnBroken:Show(args.destName, args.amount or 1)
		end
			timerNextBroken:Start()
		
	elseif args:IsSpellID(97265) then -- air strike
		WarnAirStrike:Show()
		
	elseif args:IsSpellID(97240) then -- Gravity Bomb
		if args:IsPlayer() then -- only cast on players; no need to check destFlags
			if self.Options.PlaySoundOnGravityBomb then
				PlaySoundFile("Sound\\Creature\\HoodWolf\\HoodWolfTransformPlayer01.wav")
			end
			SendChatMessage(L.GravityBomb, "YELL")
			specWarnGravityBomb:Show()
			DBM.RangeCheck:Show(12)
			self:SetIcon(args.destName, 6, 12)
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(97240) then -- Gravity Bomb
		if self.Options.RangeFrame then
			DBM.RangeCheck:Hide()
		end
	end
end


function mod:SPELL_INSTAKILL(args)
	if args:IsSpellID(97124) then
		if args.destName == UnitName("player") then
			SendChatMessage(L.BombKill, "RAID")
		end
	end
end


function mod:CHAT_MSG_MONSTER_YELL(msg)
	if (msg == L.Rebuild or msg:find(L.Rebuild)) then
		WarnBotsNow:Show()
		timerBots:Start(60)
		WarnBotsoon:Schedule(50)
	-- Should not be done this way	
	--[[
	elseif (msg == L.Defeat or msg:find(L.Defeat)) then
		mod.stats.kills = mod.stats.kills + 1
	--]]
	end
end


function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(97265) then -- air strike
		if once == true then
			if self.Options.PlaySoundOnAirStrike then
				PlaySoundFile("Sound\\Creature\\AlgalonTheObserver\\UR_Algalon_BHole01.wav")	
			end	
			WarnAirStrike:Show()
			once = false
			self:ScheduleMethod(30, "ResetAirstrike")
		end
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED