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
--  Iron Council  --
--------------------
L = DBM:GetModLocalization("IronCouncil")

L:SetGeneralLocalization{
	name = "Iron Council"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	PlaySoundLightningTendrils	= "Play sound on $spell:63486",
	SetIconOnOverwhelmingPower	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(61888),
	SetIconOnStaticDisruption	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(61912),
	AlwaysWarnOnOverload		= "Always warn on $spell:63481 (otherwise, only when targeted)",
	PlaySoundOnOverload			= "Play sound on $spell:63481",
	PlaySoundDeathRune			= "Play sound on $spell:63490"
}

L:SetMiscLocalization{
	Steelbreaker		= "Steelbreaker",
	RunemasterMolgeim	= "Runemaster Molgeim",
	StormcallerBrundir 	= "Stormcaller Brundir"
}

----------------------------
--  Algalon the Observer  --
----------------------------
L = DBM:GetModLocalization("Algalon")

L:SetGeneralLocalization{
	name = "Algalon the Observer"
}

L:SetTimerLocalization{
	NextCollapsingStar		= "Next Collapsing Star",
	PossibleNextCosmicSmash	= "Next possible Cosmic Smash",
	TimerCombatStart		= "Combat starts"
}

L:SetWarningLocalization{
	WarningPhasePunch		= "Phase Punch on >%s< - Stack %d",
	WarningCosmicSmash 		= "Cosmic Smash - Explosion in 4 seconds",
	WarnPhase2Soon			= "Phase 2 soon",
	warnStarLow				= "Collapsing Star is low"
}

L:SetOptionLocalization{
	WarningPhasePunch		= "Announce Phase Punch targets",
	NextCollapsingStar		= "Show timer for next Collapsing Star",
	WarningCosmicSmash 		= "Show warning for Cosmic Smash",
	PossibleNextCosmicSmash	= "Show timer for next possible Cosmic Smash",
	TimerCombatStart		= "Show timer for start of combat",
	WarnPhase2Soon			= "Show pre-warning for Phase 2 (at ~23%)",
	warnStarLow				= "Show special warning when Collapsing Star is low (at ~25%)"
}

L:SetMiscLocalization{
	YellPull				= "Your actions are illogical. All possible results for this encounter have been calculated. The Pantheon will receive the Observer's message regardless of outcome.",
	YellKill				= "I have seen worlds bathed in the Makers' flames, their denizens fading without as much as a whimper. Entire planetary systems born and razed in the time that it takes your mortal hearts to beat once. Yet all throughout, my own heart devoid of emotion... of empathy. I. Have. Felt. Nothing. A million-million lives wasted. Had they all held within them your tenacity? Had they all loved life as you do?",
	Emote_CollapsingStar	= "%s begins to Summon Collapsing Stars!",
	Phase2					= "Behold the tools of creation",
	PullCheck				= "Time until Algalon transmits distress signal= (%d+) min."
}

----------------
--  Kologarn  --
----------------
L = DBM:GetModLocalization("Kologarn")

L:SetGeneralLocalization{
	name = "Kologarn"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
	timerLeftArm		= "Left Arm respawn",
	timerRightArm		= "Right Arm respawn",
	achievementDisarmed	= "Timer for Disarm"
}

L:SetOptionLocalization{
	timerLeftArm			= "Show timer for Left Arm respawn",
	timerRightArm			= "Show timer for Right Arm respawn",
	achievementDisarmed		= "Show timer for Disarm achievement",
	SetIconOnGripTarget		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(64292),
	SetIconOnEyebeamTarget	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(63346),
	PlaySoundOnEyebeam		= "Play sound on $spell:63346",
	YellOnBeam				= "Yell on $spell:63346",
}

L:SetMiscLocalization{
	Yell_Trigger_arm_left	= "Just a scratch!",
	Yell_Trigger_arm_right	= "Only a flesh wound!",
	Health_Body				= "Kologarn Body",
	Health_Right_Arm		= "Right Arm",
	Health_Left_Arm			= "Left Arm",
	FocusedEyebeam			= "his eyes on you",
	YellBeam				= "Focused Eyebeam on me!"
}

---------------
--  Auriaya  --
---------------
L = DBM:GetModLocalization("Auriaya")

L:SetGeneralLocalization{
	name = "Auriaya"
}

L:SetMiscLocalization{
	Defender = "Feral Defender (%d)",
	YellPull = "Some things are better left alone!"
}

L:SetTimerLocalization{
	timerDefender	= "Feral Defender activates"
}

L:SetWarningLocalization{
	SpecWarnBlast	= "Sentinel Blast - Interrupt now",
	WarnCatDied		= "Feral Defender down (%d lives remaining)",
	WarnCatDiedOne	= "Feral Defender down (1 life remaining)",
}

L:SetOptionLocalization{
	SpecWarnBlast	= "Show special warning for Sentinel Blast (to interrupt)",
	WarnCatDied		= "Show warning when Feral Defender dies",
	WarnCatDiedOne	= "Show warning when Feral Defender has 1 life remaining",
	timerDefender	= "Show timer for when Feral Defender is activated"
}

-------------
--  Hodir  --
-------------
L = DBM:GetModLocalization("Hodir")

L:SetGeneralLocalization{
	name = "Hodir"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	PlaySoundOnFlashFreeze	= "Play sound on $spell:61968 cast",
	YellOnStormCloud		= "Yell on $spell:65133",
	SetIconOnStormCloud		= "Set icons on $spell:65133 targets"
}

L:SetMiscLocalization{
	YellKill	= "I... I am released from his grasp... at last.",
	YellCloud	= "Storm Cloud on me!"
}

--------------
--  Thorim  --
--------------
L = DBM:GetModLocalization("Thorim")

L:SetGeneralLocalization{
	name = "Thorim"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
	TimerHardmode	= "Hard mode"
}

L:SetOptionLocalization{
	TimerHardmode	= "Show timer for hard mode",
	RangeFrame		= "Show range frame",
	AnnounceFails	= "Post player fails for $spell:62017 to raid chat\n(requires announce to be enabled and leader/promoted status)"
}

L:SetMiscLocalization{
	YellPhase1	= "Interlopers! You mortals who dare to interfere with my sport will pay.... Wait--you...",
	YellPhase2	= "Impertinent whelps, you dare challenge me atop my pedestal? I will crush you myself!",
	YellKill	= "Stay your arms! I yield!",
	ChargeOn	= "Lightning Charge: %s",
	Charge		= "Lightning Charge fails (this try): %s" 
}

-------------
--  Freya  --
-------------
L = DBM:GetModLocalization("Freya")

L:SetGeneralLocalization{
	name = "Freya"
}

L:SetMiscLocalization{
	SpawnYell          = "Children, assist me!",
	WaterSpirit        = "Ancient Water Spirit",
	Snaplasher         = "Snaplasher",
	StormLasher        = "Storm Lasher",
	YellKill           = "His hold on me dissipates. I can see clearly once more. Thank you, heroes.",
	TrashRespawnTimer  = "Freya trash respawn"
}

L:SetWarningLocalization{
	WarnSimulKill	= "First add down - Resurrection in ~12 seconds"
}

L:SetTimerLocalization{
	TimerSimulKill	= "Resurrection"
}

L:SetOptionLocalization{
	WarnSimulKill	= "Announce first mob down",
	PlaySoundOnFury = "Play sound when you are affected by $spell:63571",
	TimerSimulKill	= "Show timer for mob resurrection"
}

----------------------
--  Freya's Elders  --
----------------------
L = DBM:GetModLocalization("Freya_Elders")

L:SetGeneralLocalization{
	name = "Freya's Elders"
}

L:SetMiscLocalization{
	TrashRespawnTimer	= "Freya trash respawn"
}

L:SetWarningLocalization{
}

L:SetOptionLocalization{
	PlaySoundOnFistOfStone	= "Play sound on Fists of Stone",
	TrashRespawnTimer		= "Show timer for trash respawn"
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

