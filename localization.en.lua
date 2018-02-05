local L

-----------------------
--  Ian  				 --
-----------------------
L = DBM:GetModLocalization("Ian")

L:SetGeneralLocalization{
	name = "G.R.D. Ian 2.0"
}

L:SetTimerLocalization{
	NextScrapBots			= "Next Scrap Bots",
	NextAirStrike				= "Next Air Strike"
}
	
L:SetMiscLocalization{
	YellPull						= "Hello. My name is G.R.D. Ian 2.0, spelled like Guardian. Do you want to play ?",
	KillIan						= "Daddy, why can't I control my body anymore ?",
	YellBombMe				= "Bomb on me! Run!",
	Rebuild						= "Rebuild me, Bots !",
	BombKill					= "The bomb killed me!",
	GravityBomb				= "Gravity bomb on me, run away!",
	Defeat						= "Daddy, why can't I control my body anymore ?"
}

L:SetWarningLocalization{
	warnHealBoss				= "Scrap Bot healed G.R.D. Ian 2.0",
	WarnBots					= "Scrap Bots appeared",
	WarnAirStrike				= "Air Strike, be careful!",
	Broken						= "Broken on >%s< (%d)",
	BombSpawned			= "Bomb spawned",
	ExposeWeakness		= "Expose Weakness",
	GravityBomb				= "Gravity Bomb on you!"
}

L:SetOptionLocalization{
	warnHealBoss				= "Show special warning for Scrap Bot healing G.R.D. Ian 2.0",
	WarnAirStrike				= "Show special warning for Air Strike",
	WarnBots					= "Show special warning for Scrap Bots",
	GravityBomb				= "Show special warning for Gravity Bomb",
	NextScrapBots			= "Show timer for next Scrap Bots",
	NextAirStrike				= "Show timer for next Air Strike",
	Broken						= "Announce stacks for Broken",
	BombSpawned			= "Announce Bomb spawned",
	ExposeWeakness		= "Announce Expose Weakness debuff"
}

--------------------------------
--  Jesper					   --
--------------------------------
L = DBM:GetModLocalization("Jesper")

L:SetGeneralLocalization{
	name = "Jesper"
}

L:SetTimerLocalization{
	NextFireShield			= "Next Fire Shield",
	NextPyroblast				= "Next Pyroblast",
	StoneDuration				= "Seconds left on Stone",
	NextFlamingAbyssal		= "Summon Flaming Abyssal"
	
}

L:SetMiscLocalization{
	YellPullJesp				= "You play with fire ? You die !",
	Stone						= "I'm stunned in the water!"
}

L:SetWarningLocalization{
	FireBlast					= "Fire Blast on >%s< (%d)",
	FlameBurst					= "Mana Flame Burst on >%s< (%d)",
	FireBomb					= "Fire Bomb on >%s<",
	FlameJets					= "Flame Jets on >%s<",
	FieryBoulder				= "Fiery Boulder on >%s<",
	FlamingAbyssal			= "Flaming Abyssal appeared",
	MoltenGiant				= "Molten Giant appeared",
	SpecWarnFireShield	 	= "Fire Shield is up!",
	SpecWarnFireBomb	 	= "Fire Bomb on you!",
	SpecWarnFlameJets	 	= "Flame Jets on you!",
	SpecWarnFieryBoulder	= "Fiery Boulder on you!",
	SpecWarnStone	 		= "You are stunned!"
}

L:SetOptionLocalization{
	FireBlast					= "Announce Fire Blast targets",
	FlameBurst					= "Announce Mana Flame Burst",
	FireBomb					= "Announce Fire Bomb targets",
	FlameJets					= "Announce Flame Jets targets",
	FieryBoulder				= "Announce Fiery Boulder targets",
	FlamingAbyssal			= "Announce Flaming Abyssal",
	MoltenGiant				= "Announce Molten Giant",
	SpecWarnFireShield	 	= "Show special warning when Fire Shield is active",
	SpecWarnFireBomb	 	= "Show special warning when you are effected by Fire Bomb",
	SpecWarnFlameJets	 	= "Show special warning when you are effected by Flame Jets",
	SpecWarnFieryBoulder	= "Show special warning when you are effected by Fiery Boulder",
	SpecWarnStone	 		= "Show special warning when you are stunned",
	NextFireShield			= "Show timer for next Fire Shield",
	NextPyroblast				= "Show timer for next Pyroblast",
	StoneDuration				= "Show timer on Stone",
	NextFlamingAbyssal		= "Show timer for next Flaming Abyssal"
}

------------------
--  Jeff		  --
------------------
L = DBM:GetModLocalization("Jeff")

L:SetGeneralLocalization{
	name = "Jeff"
}

L:SetTimerLocalization{
	NextSummonImp				= "Next Summon Imp",
	NextSummonVoidwalker	= "Next Summon Voidwalker",
	NextSummonSuccubus		= "Next Summon Succubus",
	NextSummonFelhunter		= "Next Summon Felhunter",
	NextSummonFelguard		= "Next summon Felguard",
	NextRainFire					= "Next Rain of Fire",
	NetherProtection				= "Seconds left on Nether Protection",
	NextShadowVolley			= "Next Shadow Volley"
}

L:SetWarningLocalization{	
	SpecWarnRainOfFire		= "Rain of Fire on you",
	WarnRainOfFire				= "Rain of Fire on >%s<",
	RainofFire						= "Rain of Fire",
	SummonedImps				= "Imps appeared",
	SummonedVoidwalkers		= "Voidwalkers appeared",
	SummonedSuccubus			= "Succubus appeared",
	SummonedFelhunters		= "Felhunters appeared",
	SummonedFelguard			= "Felguards appeared",
	ShadowBoltVolley			= "Shadow Bolt Volley",
	NetherProtectionDrop		= "Nether Protection is about to drop",
	NetherProtectionOff			= "Nether Protection is off"
}

L:SetOptionLocalization{
	OptionRainOfFire				= "Announce $spell:97245 targets (unreliable)",
	RainofFire						= "Announce Rain of Fire",
	SummonedImps				= "Announce imps spawned",
	SummonedVoidwalkers		= "Announce voidwalkers spawned",
	SummonedSuccubus			= "Announce succubus spawned",
	SummonedFelhunters		= "Announce felhunters spawned",
	SummonedFelguard			= "Announce felguards spawned",
	ShadowBoltVolley			= "Announce Shadow Bolt Volley",
	NetherProtectionDrop		= "Announce Nether Protection is about to drop",
	NetherProtectionOff			= "Announce Nether Protection is off",
	NextSummonImp				= "Show timer for next Summon Imp",
	NextSummonVoidwalker	= "Show timer for next Summon Voidwalker",
	NextSummonSuccubus		= "Show timer for next Summon Succubus",
	NextSummonFelhunter		= "Show timer for next Summon Felhunter",
	NextSummonFelguard		= "Show timer for next summon Felguard",
	NextRainFire					= "Show timer for next Rain of Fire",
	NetherProtection				= "Show timer left on Nether Protection",
	NextShadowVolley			= "Show timer for next Shadow Volley"
}

L:SetMiscLocalization{
	YellPullJeff						= "My name… ehh... Jeff. Yes, that’s it, Jeff.",
	KillJeff							= "So this is what happens to all those people I kill. Interesting, yet bad. Wish I would still be alive to never do that again. Well, what can you do ? Sorry, yes. I’ll die now. See you on the other side. Bye bye !",
	VolleyKill						= "The Shadow Bolt Volley killed me!",
}

----------------------------
--  Ristzy 				  --
----------------------------
L = DBM:GetModLocalization("Ristzy")

L:SetGeneralLocalization{
	name = "Ristzy",
	StormCloud = "Storm Cloud on me!"
}

L:SetTimerLocalization{
	NextThunderClap				= "Next Thunder Clap",
	NextWorldBreaker			= "Next World Breaker",
	StormCloudCD					= "Seconds left on Storm Cloud"
}


L:SetWarningLocalization{
	specWarnWorldBreaker 	= "World Breaker, come closer!",
	specWarnRepairBot			= "Repair bots appeared",
	specWarnSheepBot			= "Sheep bot appeared",
	specWarnChickenBot		= "Chicken bot appeared",
	specWarnBombBot			= "Bomb bot appeared",
	WarnFelFlameStrike			= "Fel Flamestrike on >%s<",
	WarnFelInfusion				= "Fel Infusion on >%s< (%d)",
	WarnStormCloudOver		= "Storm Cloud faded"
}

L:SetOptionLocalization{
	OptionFelFlameStrike		= "Announce $spell:97256 targets (unreliable)",
	NextThunderClap				= "Show timer for next Thunder Clap",
	NextWorldBreaker			= "Show timer for next World Breaker",
	StormCloudCD					= "Show timer left on Storm Cloud",
	specWarnWorldBreaker 	= "Show special warning for World Breaker",
	specWarnRepairBot			= "Show special warning for Repair bots",
	specWarnSheepBot			= "Show special warning for Sheep bot",
	specWarnChickenBot		= "Show special warning for Chicken bot",
	specWarnBombBot			= "Show special warning for Bomb bot",
	WarnStormCloudOver		= "Announce Storm Cloud faded",
	WarnFelInfusion				= "Announce >35 stacks of Fel Infusion"
}

L:SetMiscLocalization{
	YellPullRistzy					= "Hope you don't need repairs, because this bot doesn't repair. Sorry. Will fix it."
}

--------------------
--  Confused Raiders --
--------------------
L = DBM:GetModLocalization("Confusedraiders")

L:SetGeneralLocalization{
	name = "The Confused Raiders"
}

L:SetWarningLocalization{
	WarnHexTarget				= "Hex on >%s<",
	WarnHex						= "Hex on you",
	WarnFear						= "Psychic Scream",
	WarnShadowfury				= "Shadowfury"
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	OptionWarnHexTarget		= "Announce Hex targets",
	WarnHex						= "Announce Hex on you",
	WarnFear						= "Announce Psychic Scream",
	WarnShadowfury				= "Announce Shadowfury"

}

L:SetMiscLocalization{
	Oberon						= "Oberon",
	Jimmy						= "Jimmy",
	Phantasm 					= "Phantasm",
	Jinha							= "Jinha",
	Nexxi							= "Nexxi",
	Disengagelol				= "Disengagelol",
	Osiris						= "Osiris",
	Shaeria						= "Shaeria",
	Kurmak						= "Kurmak",
	Gummyboi					= "Gummyboi",
	pull							= "Bring it !"
}

----------------
--  Space?  --
----------------
L = DBM:GetModLocalization("Azeroth")

L:SetGeneralLocalization{
	name = "Space ?"
}

L:SetWarningLocalization{
	WarnStarCollapse				= "Star Collapse - Move away!",	
	WarnBlackHole					= "Black Hole appeared!",
	WarnConstelation				= "Constelation spawned!"
}

L:SetTimerLocalization{
	NextCollapsingStar				= "Next Collapsing Star",
	NextBlackhole					= "Next Black hole",
	NextConstelation				= "Next Constelation"
}

L:SetOptionLocalization{
	WarnStarCollapse				= "Announce Star Collapse",	
	WarnBlackHole					= "Announce Black Hole",
	WarnConstelation				= "Announce Constelation",
	NextCollapsingStar				= "Show timer for next Star Collapse",
	NextBlackhole					= "Show timer for next Black Hole",
	NextConstelation				= "Show timer for next Constelation"
}


--------------------------------
--  Chillich				   --
--------------------------------
L = DBM:GetModLocalization("Chillich")

L:SetGeneralLocalization{
	name = "Chillich"
}

L:SetTimerLocalization{
	NextNecromancy				= "Next Necromancy Phase",
	NextEntomb						= "Next Ice Block"
}

L:SetMiscLocalization{
	YellPullChillich				= "Why do you disturb ? I'm chilling here."
}

L:SetWarningLocalization{
	specWarnBlisteringCold	= "Hide behind the Ice Blocks!",
	WarnBlizzard					= "Watch out for the Blizzard!",
	WarnIceBlock				= "Ice Block on >%s<",
	Necromancy	 				= "Necromancy Phase, kill adds!",
	specWarnIceBlock			= "You have Ice Block!"
}

L:SetOptionLocalization{
	OptionIceBlock				= "Announce Ice Block targets (unreliable)",
	Necromancy					= "Announce Necromancy Phase",
	WarnBlizzard					= "Announce Blizzard",
	WarnIceBlock				= "Announce Ice Block on target",
	specWarnBlisteringCold 	= "Show special warning when Blistering Cold happens",
	NextNecromancy			= "Show timer for Necromancy Phase",
	NextEntomb					= "Show timer for next Ice Block",
	specWarnIceBlock			= "Announce when you are an Ice Block"
}

--------------------------------
--  Grommash_HellScream				   --
--------------------------------
L = DBM:GetModLocalization("Grommash_Hellscream")

L:SetGeneralLocalization{
	name = "Grommash Hellscream"
}

L:SetTimerLocalization{
	nextBerserkerStance				= "Next Beserker Stance",
	nextBattleStance					= "Next Battle Stance",
	nextWhirlwind 						= "Next Whirlwind",
	nextBladestorm 					= "Next Bladestorm"
}

L:SetMiscLocalization{

	YellPullGrommash				= "Do you DARE challenge the Warsong chieftain ?!?!"
}

L:SetWarningLocalization{
	warnBerserkerStance		= "Berzerker Stance, Stack on Boss!",
	warnBattleStance			= "Battle Stance, ranged go back!",
	specWhirldWind 			= "Whirlwind - Move away!"
}

L:SetOptionLocalization{
	warnBerserkerStance			= "Announce Beserker Stance",
	warnBattleStance				= "Announce Battle Stance",
	specWhirldWind					= "Announce special warning for Whirlwind",
	nextBerserkerStance			= "Show timer for next Beserker Stance ",
	nextBattleStance				= "Show timer for next Battle Stance",
	nextWhirlwind	 				= "Show timer for next Whirlwind",
	nextBladestorm					= "Show timer for next Bladestorm"
}


--------------------------------
--  Tree_of_Life				   --
--------------------------------
L = DBM:GetModLocalization("Tree_of_Life")

L:SetGeneralLocalization{
	name = "Tree of Life"
}

L:SetTimerLocalization{
	NextSummonAdds				= "Next Summon Adds",
	NextBarksin						= "Next Barskin",
	NextHealingTouch				= "Next Healing Touch",
}

L:SetMiscLocalization{
}

L:SetWarningLocalization{
	BranchSwipe					= "Branch Swipe on >%s< (%d)",
	BranchSwipeSwitch		= "Branch Swipe on >%s< has %d stacks, swap tanks!",
	SummonedAdds			= "Adds appeared!",
	SpecHealingTouch			= "Watch out - Healing Touch!",
	warningBarskin				= "Barsking is up!"
}

L:SetOptionLocalization{
	BranchSwipe					= "Announce Branch Swipe >9 stacks",
	BranchSwipeSwitch		= "Announce Branch Swipe >13 switch",
	SummonedAdds			= "Announce when adds are spawned",
	SpecHealingTouch			= "Announce when Healing Touch is casted",
	warningBarskin				= "Announce when Barskin is up",
	NextSummonAdds			= "Show timer for next Summon Adds",
	NextBarksin					= "Show timer for next Barskin",
	NextHealingTouch			= "Show timer for next Healing Touch",
}


--------------------------------
--  Tree_of_Destruction				   --
--------------------------------
L = DBM:GetModLocalization("Tree_of_Destruction")

L:SetGeneralLocalization{
	name = "Tree of Destruction"
}

L:SetTimerLocalization{
	NextSummonAdds				= "Next Summon Adds",
	NextIgnitingNova				= "Next Igniting Nova"
}

L:SetMiscLocalization{
}

L:SetWarningLocalization{
	BurningFlesh					= "Burning Flesh on >%s< (%d)",
	BurningFleshSwitch		= "Burning Flesh on >%s< has %d stacks, swap tanks!",
	SummonedAdds			= "Adds appeared!",
	specIgnitingNova			= "Watch out - Igniting Nova!",
	specWarnFireBomb		= "FireBomb on you!",
}

L:SetOptionLocalization{
	BurningFlesh					= "Announce Burning Flesh stacks",
	BurningFleshSwitch		= "Announce Branch Swipe >5 switch",
	FireBomb						= "Announce Living Bomb targets",
	SummonedAdds			= "Announce Adds",
	specIgnitingNova			= "Announce when Igniting Nova is being cast",
	specWarnFireBomb	 	= "Show special warning when you are effected by Fire Bomb",
	NextSummonAdds			= "Show timer for next Adds",
	NextIgnitingNova			= " Show timer for next Igniting Nova"
}

--------------------------------
--  Tree_of_Death				   --
--------------------------------
L = DBM:GetModLocalization("Tree_of_Death")

L:SetGeneralLocalization{
	name = "Tree of Death"
}

L:SetTimerLocalization{
	NextSummonAdds				= "Next Summon Adds",
	NextDeathNova					= "Next Death Nova",
	NextVoidBlast					= "Next Void Blast"
}

L:SetMiscLocalization{

}

L:SetWarningLocalization{
	SoulShatter					= "Soul Shatter on >%s< (%d)",
	SoulShatterSwitch			= "Burning Flesh on >%s< has %d stacks, swap tanks!",
	SummonedAdds			= "Adds appeared!",
	specDeathNova	 			= "Death Nova Run 20 yards away!"
}

L:SetOptionLocalization{
	SoulShatter					= "Announce Soul Shatter Stacks",
	SoulShatterSwitch			= "Announce Soul Shatter >5 switch",
	SummonedAdds			= "Announce Adds",
	specDeathNova			 	= "Show special warning when Death Nova Happens",
	NextDeathNova				= "Show timer for Death Nova",
	NextSummonAdds			= "Show timer for next Adds",
	NextVoidBlast				= "Show timer for next Void Blast"
}


---------------
--  Mimiron  --
---------------
L = DBM:GetModLocalization("Mimiron")

L:SetGeneralLocalization{
	name = "Mimiron"
}

L:SetWarningLocalization{
	MagneticCore		= ">%s< has Magnetic Core",
	WarningShockBlast	= "Shock Blast - Run away",
	WarnBombSpawn		= "Bomb Bot spawned"
}

L:SetTimerLocalization{
	TimerHardmode	= "Hard mode - Self-destruct",
	TimeToPhase2	= "Phase 2",
	TimeToPhase3	= "Phase 3",
	TimeToPhase4	= "Phase 4"
}

L:SetOptionLocalization{
	TimeToPhase2			= "Show timer for Phase 2",
	TimeToPhase3			= "Show timer for Phase 3",
	TimeToPhase4			= "Show timer for Phase 4",
	MagneticCore			= "Announce Magnetic Core looters",
	HealthFramePhase4		= "Show health frame in Phase 4",
	AutoChangeLootToFFA		= "Switch loot mode to Free for All in Phase 3",
	WarnBombSpawn			= "Show warning for Bomb Bots",
	TimerHardmode			= "Show timer for hard mode",
	PlaySoundOnShockBlast	= "Play sound on $spell:63631",
	PlaySoundOnDarkGlare	= "Play sound on $spell:63414",
	ShockBlastWarningInP1	= "Show special warning for $spell:63631 in Phase 1",
	ShockBlastWarningInP4	= "Show special warning for $spell:63631 in Phase 4",
	RangeFrame				= "Show range frame in Phase 1 (6 yards)",
	SetIconOnNapalm			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(65026),
	SetIconOnPlasmaBlast	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(62997)
}

L:SetMiscLocalization{
	MobPhase1		= "Leviathan Mk II",
	MobPhase2		= "VX-001",
	MobPhase3		= "Aerial Command Unit",
	YellPull		= "We haven't much time, friends! You're going to help me test out my latest and greatest creation. Now, before you change your minds, remember that you kind of owe it to me after the mess you made with the XT-002.",	
	YellHardPull	= "Self-destruct sequence initiated",
	YellPhase2		= "WONDERFUL! Positively marvelous results! Hull integrity at 98.9 percent! Barely a dent! Moving right along.",
	YellPhase3		= "Thank you, friends! Your efforts have yielded some fantastic data! Now, where did I put-- oh, there it is.",
	YellPhase4		= "Preliminary testing phase complete. Now comes the true test!",
	LootMsg			= "([^%s]+).*Hitem:(%d+)"
}

---------------------
--  General Vezax  --
---------------------
L = DBM:GetModLocalization("GeneralVezax")

L:SetGeneralLocalization{
	name = "General Vezax"
}

L:SetTimerLocalization{
	hardmodeSpawn = "Saronite Animus spawn"
}

L:SetWarningLocalization{
	SpecialWarningShadowCrash		= "Shadow Crash on you - Move away",
	SpecialWarningShadowCrashNear	= "Shadow Crash near you - Watch out",
	SpecialWarningLLNear			= "Mark of the Faceless on %s near you"
}

L:SetOptionLocalization{
	SetIconOnShadowCrash			= "Set icons on $spell:62660 targets (skull)",
	SetIconOnLifeLeach				= "Set icons on $spell:63276 targets (cross)",
	SpecialWarningShadowCrash		= "Show special warning for $spell:62660\n(must be targeted or focused by at least one raid member)",
	SpecialWarningShadowCrashNear	= "Show special warning for $spell:62660 near you",
	SpecialWarningLLNear			= "Show special warning for $spell:63276 near you",
	YellOnLifeLeech					= "Yell on $spell:63276",
	YellOnShadowCrash				= "Yell on $spell:62660",
	hardmodeSpawn					= "Show timer for Saronite Animus spawn (hard mode)",
	CrashArrow						= "Show DBM arrow when $spell:62660 is near you",
	BypassLatencyCheck				= "Don't use latency based sync check for $spell:62660\n(only use this if you're having problems otherwise)"
}

L:SetMiscLocalization{
	EmoteSaroniteVapors	= "A cloud of saronite vapors coalesces nearby!",
	YellLeech			= "Mark of the Faceless on me!",
	YellCrash			= "Shadow Crash on me!"
}

------------------
--  Yogg-Saron  --
------------------
L = DBM:GetModLocalization("YoggSaron")

L:SetGeneralLocalization{
	name = "Yogg-Saron"
}

L:SetMiscLocalization{
	YellPull 			= "The time to strike at the head of the beast will soon be upon us! Focus your anger and hatred on his minions!",
	YellPhase2	 		= "I am the lucid dream.",
	Sara 				= "Sara",
	WarningYellSqueeze	= "Squeeze on me! Help me!"
}

L:SetWarningLocalization{
	WarningGuardianSpawned 			= "Guardian %d spawned",
	WarningCrusherTentacleSpawned	= "Crusher Tentacle spawned",
	WarningSanity 					= "%d Sanity remaining",
	SpecWarnSanity 					= "%d Sanity remaining",
	SpecWarnGuardianLow				= "Stop attacking this Guardian",
	SpecWarnMadnessOutNow			= "Induce Madness ending - Move out",
	WarnBrainPortalSoon				= "Brain Portal in 3 seconds",	
	SpecWarnFervor					= "Sara's Fervor on you",
	SpecWarnFervorCast				= "Sara's Fervor is being cast on you",
	SpecWarnMaladyNear				= "Malady of the Mind on %s near you",
	specWarnBrainPortalSoon			= "Brain Portal soon"
}

L:SetTimerLocalization{
	NextPortal	= "Brain Portal"
}

L:SetOptionLocalization{
	WarningGuardianSpawned			= "Show warning for Guardian spawns",
	WarningCrusherTentacleSpawned	= "Show warning for Crusher Tentacle spawns",
	WarningSanity					= "Show warning when $spell:63050 is low",
	SpecWarnSanity					= "Show special warning when $spell:63050 is very low",
	SpecWarnGuardianLow				= "Show special warning when Guardian (Phase 1) is low (for DDs)",
	WarnBrainPortalSoon				= "Show pre-warning for Brain Portal",
	SpecWarnMadnessOutNow			= "Show special warning shortly before $spell:64059 ends",
	SetIconOnFearTarget				= "Set icons on $spell:63881 targets",
	SpecWarnFervorCast				= "Show special warning when $spell:63138 is being cast on you (must be targeted or focused by at least one raid member)",
	specWarnBrainPortalSoon			= "Show special warning for next Brain Portal",
	WarningSqueeze					= "Yell on Squeeze",
	NextPortal						= "Show timer for next Brain Portal",
	SetIconOnFervorTarget			= "Set icons on $spell:63138 targets",
	ShowSaraHealth					= "Show health frame for Sara in Phase 1 (must be targeted or focused by at least one raid member)",
	SpecWarnMaladyNear				= "Show special warning for $spell:63881 near you",
	SetIconOnBrainLinkTarget		= "Set icons on $spell:63802 targets",
	MaladyArrow						= "Show DBM arrow when $spell:63881 is near you"
}

