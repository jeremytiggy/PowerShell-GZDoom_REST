Write-Host "[GZDoom_REST_API_Actions] Loading Library..." -ForegroundColor Gray
# REST API Data Definitions for Actions ----------------
# Action definitions
#Tikfinity definitions from https://github.com/zerodytrash/TikTok-Live-Connector?tab=readme-ov-file
$Global:REST_API_Actions = @{
    CMD_CONSOLE_COMMAND_SUMMON_DOOM_MONSTER = @{
        categoryId   = "CMD_CONSOLE_COMMAND_SUMMON_DOOM_MONSTER"
        categoryName = "Summon DOOM Monster right next to you"

        actions = @{
            zombieman = @{
                actionId    = "zombieman"
                actionName  = "Former Human"
                applicationData = 'summon zombieman'
            }
            shotgunGuy = @{
                actionId    = "shotgunGuy"
                actionName  = "Former Human Sergeant"
                applicationData = 'summon shotgunGuy'
            }
            chaingunGuy = @{
                actionId    = "chaingunGuy"
                actionName  = "Former Commando"
                applicationData = 'summon chaingunGuy'
            }
            doomImp = @{
                actionId    = "doomImp"
                actionName  = "Imp"
                applicationData = 'summon doomImp'
            }
            demon = @{
                actionId    = "demon"
                actionName  = "Demon"
                applicationData = 'summon demon'
            }
            spectre = @{
                actionId    = "spectre"
                actionName  = "Spectre"
                applicationData = 'summon spectre'
            }
            lostSoul = @{
                actionId    = "lostSoul"
                actionName  = "Lost Soul"
                applicationData = 'summon lostSoul'
            }
            cacodemon = @{
                actionId    = "cacodemon"
                actionName  = "Cacodemon"
                applicationData = 'summon cacodemon'
            }
            hellKnight = @{
                actionId    = "hellKnight"
                actionName  = "Hell Knight"
                applicationData = 'summon hellKnight'
            }
            baronofHell = @{
                actionId    = "baronofHell"
                actionName  = "Baron of Hell"
                applicationData = 'summon baronofHell'
            }
            arachnotron = @{
                actionId    = "arachnotron"
                actionName  = "Arachnotron"
                applicationData = 'summon arachnotron'
            }
            painElemental = @{
                actionId    = "painElemental"
                actionName  = "Pain Elemental"
                applicationData = 'summon painElemental'
            }
            revenant = @{
                actionId    = "revenant"
                actionName  = "Revenant"
                applicationData = 'summon revenant'
            }
            fatso = @{
                actionId    = "fatso"
                actionName  = "Mancubus"
                applicationData = 'summon fatso'
            }
            archVile = @{
                actionId    = "archVile"
                actionName  = "Arch-Vile"
                applicationData = 'summon archVile'
            }
            spiderMastermind = @{
                actionId    = "spiderMastermind"
                actionName  = "Spider Mastermind"
                applicationData = 'summon spiderMastermind'
            }
            cyberdemon = @{
                actionId    = "cyberdemon"
                actionName  = "Cyberdemon"
                applicationData = 'summon cyberdemon'
            }
            wolfensteinSS = @{
                actionId    = "wolfensteinSS"
                actionName  = "Wolfenstein Trooper"
                applicationData = 'summon wolfensteinSS'
            }
        }
    }

    CMD_CONSOLE_COMMAND_SUMMONMBF_DOOM_MONSTER = @{
        categoryId   = "CMD_CONSOLE_COMMAND_SUMMONMBF_DOOM_MONSTER"
        categoryName = "Summon Non-Blocking Friendly DOOM Monster right next to you"

        actions = @{
            zombieman = @{
                actionId    = "zombieman"
                actionName  = "Former Human"
                applicationData = 'summonmbf zombieman'
            }
            shotgunGuy = @{
                actionId    = "shotgunGuy"
                actionName  = "Former Human Sergeant"
                applicationData = 'summonmbf shotgunGuy'
            }
            chaingunGuy = @{
                actionId    = "chaingunGuy"
                actionName  = "Former Commando"
                applicationData = 'summonmbf chaingunGuy'
            }
            doomImp = @{
                actionId    = "doomImp"
                actionName  = "Imp"
                applicationData = 'summonmbf doomImp'
            }
            demon = @{
                actionId    = "demon"
                actionName  = "Demon"
                applicationData = 'summonmbf demon'
            }
            spectre = @{
                actionId    = "spectre"
                actionName  = "Spectre"
                applicationData = 'summonmbf spectre'
            }
            lostSoul = @{
                actionId    = "lostSoul"
                actionName  = "Lost Soul"
                applicationData = 'summonmbf lostSoul'
            }
            cacodemon = @{
                actionId    = "cacodemon"
                actionName  = "Cacodemon"
                applicationData = 'summonmbf cacodemon'
            }
            hellKnight = @{
                actionId    = "hellKnight"
                actionName  = "Hell Knight"
                applicationData = 'summonmbf hellKnight'
            }
            baronofHell = @{
                actionId    = "baronofHell"
                actionName  = "Baron of Hell"
                applicationData = 'summonmbf baronofHell'
            }
            arachnotron = @{
                actionId    = "arachnotron"
                actionName  = "Arachnotron"
                applicationData = 'summonmbf arachnotron'
            }
            painElemental = @{
                actionId    = "painElemental"
                actionName  = "Pain Elemental"
                applicationData = 'summonmbf painElemental'
            }
            revenant = @{
                actionId    = "revenant"
                actionName  = "Revenant"
                applicationData = 'summonmbf revenant'
            }
            fatso = @{
                actionId    = "fatso"
                actionName  = "Mancubus"
                applicationData = 'summonmbf fatso'
            }
            archVile = @{
                actionId    = "archVile"
                actionName  = "Arch-Vile"
                applicationData = 'summonmbf archVile'
            }
            spiderMastermind = @{
                actionId    = "spiderMastermind"
                actionName  = "Spider Mastermind"
                applicationData = 'summonmbf spiderMastermind'
            }
            cyberdemon = @{
                actionId    = "cyberdemon"
                actionName  = "Cyberdemon"
                applicationData = 'summonmbf cyberdemon'
            }
            wolfensteinSS = @{
                actionId    = "wolfensteinSS"
                actionName  = "Wolfenstein Trooper"
                applicationData = 'summonmbf wolfensteinSS'
            }
            marineFist = @{
                actionId    = "marineFist"
                actionName  = "Doom Trooper Pugilist"
                applicationData = 'summonmbf marineFist'
            }
            marineBerserk = @{
                actionId    = "marineBerserk"
                actionName  = "Doom Trooper Berseker"
                applicationData = 'summonmbf marineBerserk'
            }
            marineChainsaw = @{
                actionId    = "marineChainsaw"
                actionName  = "Doom Trooper w/ Chainsaw"
                applicationData = 'summonmbf marineChainsaw'
            }
            marinePistol = @{
                actionId    = "marinePistol"
                actionName  = "Doom Trooper w/ Pistol"
                applicationData = 'summonmbf marinePistol'
            }
            marineShotgun = @{
                actionId    = "marineShotgun"
                actionName  = "Doom Trooper w/ Classic Shotgun"
                applicationData = 'summonmbf marineShotgun'
            }
            marineSSG = @{
                actionId    = "marineSSG"
                actionName  = "Doom Trooper w/ Super Shotgun"
                applicationData = 'summonmbf marineSSG'
            }
            marineChaingun = @{
                actionId    = "marineChaingun"
                actionName  = "Doom Trooper w/ Chaingun"
                applicationData = 'summonmbf marineChaingun'
            }
            marineRocket = @{
                actionId    = "marineRocket"
                actionName  = "Doom Trooper w/ Rocket Launcher"
                applicationData = 'summonmbf marineRocket'
            }
            marinePlasma = @{
                actionId    = "marinePlasma"
                actionName  = "Doom Trooper w/ Plasma Rifle"
                applicationData = 'summonmbf marinePlasma'
            }
            marineBFG = @{
                actionId    = "marineBFG"
                actionName  = "Doom Trooper w/ BFG"
                applicationData = 'summonmbf marineBFG'
            }
        }
    }

    CMD_CONSOLE_COMMAND_SUMMON_DOOM_PICKUPS = @{
        categoryId   = "CMD_CONSOLE_COMMAND_SUMMON_DOOM_PICKUPS"
        categoryName = "Summon DOOM Pickup right next to you"

        actions = @{
            stimpack = @{
                actionId    = "stimpack"
                actionName  = "Stimpack"
                applicationData = 'summon stimpack'
            }
            medikit = @{
                actionId    = "medikit"
                actionName  = "Medikit"
                applicationData = 'summon medikit'
            }
            healthBonus = @{
                actionId    = "healthBonus"
                actionName  = "Health Bonus"
                applicationData = 'summon healthbonus'
            }
            soulsphere = @{
                actionId    = "soulsphere"
                actionName  = "Soul Sphere"
                applicationData = 'summon soulsphere'
            }
            megasphere = @{
                actionId    = "megasphere"
                actionName  = "Megasphere"
                applicationData = 'summon megasphere'
            }
            greenArmor = @{
                actionId    = "greenArmor"
                actionName  = "Green Armor"
                applicationData = 'summon greenarmor'
            }
            blueArmor = @{
                actionId    = "blueArmor"
                actionName  = "Blue Armor"
                applicationData = 'summon bluearmor'
            }
            armorBonus = @{
                actionId    = "armorBonus"
                actionName  = "Armor Bonus"
                applicationData = 'summon armorbonus'
            }
            berserk = @{
                actionId    = "berserk"
                actionName  = "Berserk Pack"
                applicationData = 'summon berserk'
            }
            invulnerabilitySphere = @{
                actionId    = "invulnerabilitySphere"
                actionName  = "Invulnerability Sphere"
                applicationData = 'summon invulnerabilitySphere'
            }
            BlurSphere = @{
                actionId    = "BlurSphere"
                actionName  = "Partial Invisibility"
                applicationData = 'summon BlurSphere'
            }
            radSuit = @{
                actionId    = "radSuit"
                actionName  = "Radiation Suit"
                applicationData = 'summon RadSuit'
            }
            allMap = @{
                actionId    = "allMap"
                actionName  = "Computer Area Map"
                applicationData = 'summon allmap'
            }
            infrared = @{
                actionId    = "infrared"
                actionName  = "Light Amplification Goggles"
                applicationData = 'summon infrared'
            }
            chainsaw = @{
                actionId    = "chainsaw"
                actionName  = "Chainsaw"
                applicationData = 'summon chainsaw'
            }
            pistol = @{
                actionId    = "pistol"
                actionName  = "Pistol"
                applicationData = 'summon pistol'
            }
            clip = @{
                actionId    = "clip"
                actionName  = "Ammo Clip"
                applicationData = 'summon clip'
            }
            shotgun = @{
                actionId    = "shotgun"
                actionName  = "Shotgun"
                applicationData = 'summon shotgun'
            }
            superShotgun = @{
                actionId    = "superShotgun"
                actionName  = "Super Shotgun"
                applicationData = 'summon supershotgun'
            }
            shells = @{
                actionId    = "shells"
                actionName  = "Shotgun Shells"
                applicationData = 'summon shells'
            }
            shellBox = @{
                actionId    = "shellBox"
                actionName  = "Box of Shells"
                applicationData = 'summon shellbox'
            }
            chaingun = @{
                actionId    = "chaingun"
                actionName  = "Chaingun"
                applicationData = 'summon chaingun'
            }
            clipBox = @{
                actionId    = "clipBox"
                actionName  = "Box of Bullets"
                applicationData = 'summon clipbox'
            }
            rocketLauncher = @{
                actionId    = "rocketLauncher"
                actionName  = "Rocket Launcher"
                applicationData = 'summon rocketlauncher'
            }
            rocketAmmo = @{
                actionId    = "rocketAmmo"
                actionName  = "Rocket"
                applicationData = 'summon rocketammo'
            }
            rocketBox = @{
                actionId    = "rocketBox"
                actionName  = "Box of Rockets"
                applicationData = 'summon rocketbox'
            }
            plasmaRifle = @{
                actionId    = "plasmaRifle"
                actionName  = "Plasma Rifle"
                applicationData = 'summon plasmagun'
            }
            bfg9000 = @{
                actionId    = "bfg9000"
                actionName  = "BFG 9000"
                applicationData = 'summon bfg9000'
            }
            cell = @{
                actionId    = "cell"
                actionName  = "Energy Cell"
                applicationData = 'summon cell'
            }
            cellPack = @{
                actionId    = "cellPack"
                actionName  = "Cell Pack"
                applicationData = 'summon cellpack'
            }
        }
    }

    CMD_CONSOLE_COMMAND_SUMMONACTORNEARBY_DOOM_MONSTER = @{
        categoryId   = "CMD_CONSOLE_COMMAND_SUMMONACTORNEARBY_DOOM_MONSTER"
        categoryName = "Summon DOOM Monster In-Front-Of/Nearby Player"

        actions = @{
            zombieman = @{
                actionId    = "zombieman"
                actionName  = "Former Human"
                applicationData = 'SET CV_s_actorNameToSummonNearby zombieman;wait 1;pukename SummonActorNearby'
            }
            shotgunGuy = @{
                actionId    = "shotgunGuy"
                actionName  = "Former Human Sergeant"
                applicationData = 'SET CV_s_actorNameToSummonNearby shotgunGuy;pukename SummonActorNearby'
            }
            chaingunGuy = @{
                actionId    = "chaingunGuy"
                actionName  = "Former Commando"
                applicationData = 'SET CV_s_actorNameToSummonNearby chaingunGuy;pukename SummonActorNearby'
            }
            doomImp = @{
                actionId    = "doomImp"
                actionName  = "Imp"
                applicationData = 'SET CV_s_actorNameToSummonNearby doomImp;pukename SummonActorNearby'
            }
            demon = @{
                actionId    = "demon"
                actionName  = "Demon"
                applicationData = 'SET CV_s_actorNameToSummonNearby demon;pukename SummonActorNearby'
            }
            spectre = @{
                actionId    = "spectre"
                actionName  = "Spectre"
                applicationData = 'SET CV_s_actorNameToSummonNearby spectre;pukename SummonActorNearby'
            }
            lostSoul = @{
                actionId    = "lostSoul"
                actionName  = "Lost Soul"
                applicationData = 'SET CV_s_actorNameToSummonNearby lostSoul;pukename SummonActorNearby'
            }
            cacodemon = @{
                actionId    = "cacodemon"
                actionName  = "Cacodemon"
                applicationData = 'SET CV_s_actorNameToSummonNearby cacodemon;pukename SummonActorNearby'
            }
            hellKnight = @{
                actionId    = "hellKnight"
                actionName  = "Hell Knight"
                applicationData = 'SET CV_s_actorNameToSummonNearby hellKnight;pukename SummonActorNearby'
            }
            baronofHell = @{
                actionId    = "baronofHell"
                actionName  = "Baron of Hell"
                applicationData = 'SET CV_s_actorNameToSummonNearby baronofHell;pukename SummonActorNearby'
            }
            arachnotron = @{
                actionId    = "arachnotron"
                actionName  = "Arachnotron"
                applicationData = 'SET CV_s_actorNameToSummonNearby arachnotron;pukename SummonActorNearby'
            }
            painElemental = @{
                actionId    = "painElemental"
                actionName  = "Pain Elemental"
                applicationData = 'SET CV_s_actorNameToSummonNearby painElemental;pukename SummonActorNearby'
            }
            revenant = @{
                actionId    = "revenant"
                actionName  = "Revenant"
                applicationData = 'SET CV_s_actorNameToSummonNearby revenant;pukename SummonActorNearby'
            }
            fatso = @{
                actionId    = "fatso"
                actionName  = "Mancubus"
                applicationData = 'SET CV_s_actorNameToSummonNearby fatso;pukename SummonActorNearby'
            }
            archVile = @{
                actionId    = "archVile"
                actionName  = "Arch-Vile"
                applicationData = 'SET CV_s_actorNameToSummonNearby archVile;pukename SummonActorNearby'
            }
            spiderMastermind = @{
                actionId    = "spiderMastermind"
                actionName  = "Spider Mastermind"
                applicationData = 'SET CV_s_actorNameToSummonNearby spiderMastermind;pukename SummonActorNearby'
            }
            cyberdemon = @{
                actionId    = "cyberdemon"
                actionName  = "Cyberdemon"
                applicationData = 'SET CV_s_actorNameToSummonNearby cyberdemon;pukename SummonActorNearby'
            }
            wolfensteinSS = @{
                actionId    = "wolfensteinSS"
                actionName  = "Wolfenstein Trooper"
                applicationData = 'SET CV_s_actorNameToSummonNearby wolfensteinSS;pukename SummonActorNearby'
            }
        }
    }

    CMD_CONSOLE_COMMAND_SUMMONFRIENDLYACTORNEARBY_DOOM_MONSTER = @{
        categoryId   = "CMD_CONSOLE_COMMAND_SUMMONFRIENDLYACTORNEARBY_DOOM_MONSTER"
        categoryName = "Summon Friendly DOOM Monster In-Front-Of/Nearby Player"

        actions = @{
            zombieman = @{
                actionId    = "zombieman"
                actionName  = "Former Human"
                applicationData = 'SET CV_s_actorNameToSummonNearby zombieman;wait 1;pukename SummonFriendlyActorNearby'
            }
            shotgunGuy = @{
                actionId    = "shotgunGuy"
                actionName  = "Former Human Sergeant"
                applicationData = 'SET CV_s_actorNameToSummonNearby shotgunGuy;wait 1;pukename SummonFriendlyActorNearby'
            }
            chaingunGuy = @{
                actionId    = "chaingunGuy"
                actionName  = "Former Commando"
                applicationData = 'SET CV_s_actorNameToSummonNearby chaingunGuy;wait 1;pukename SummonFriendlyActorNearby'
            }
            doomImp = @{
                actionId    = "doomImp"
                actionName  = "Imp"
                applicationData = 'SET CV_s_actorNameToSummonNearby doomImp;wait 1;pukename SummonFriendlyActorNearby'
            }
            demon = @{
                actionId    = "demon"
                actionName  = "Demon"
                applicationData = 'SET CV_s_actorNameToSummonNearby demon;wait 1;pukename SummonFriendlyActorNearby'
            }
            spectre = @{
                actionId    = "spectre"
                actionName  = "Spectre"
                applicationData = 'SET CV_s_actorNameToSummonNearby spectre;wait 1;pukename SummonFriendlyActorNearby'
            }
            lostSoul = @{
                actionId    = "lostSoul"
                actionName  = "Lost Soul"
                applicationData = 'SET CV_s_actorNameToSummonNearby lostSoul;wait 1;pukename SummonFriendlyActorNearby'
            }
            cacodemon = @{
                actionId    = "cacodemon"
                actionName  = "Cacodemon"
                applicationData = 'SET CV_s_actorNameToSummonNearby cacodemon;wait 1;pukename SummonFriendlyActorNearby'
            }
            hellKnight = @{
                actionId    = "hellKnight"
                actionName  = "Hell Knight"
                applicationData = 'SET CV_s_actorNameToSummonNearby hellKnight;wait 1;pukename SummonFriendlyActorNearby'
            }
            baronofHell = @{
                actionId    = "baronofHell"
                actionName  = "Baron of Hell"
                applicationData = 'SET CV_s_actorNameToSummonNearby baronofHell;wait 1;pukename SummonFriendlyActorNearby'
            }
            arachnotron = @{
                actionId    = "arachnotron"
                actionName  = "Arachnotron"
                applicationData = 'SET CV_s_actorNameToSummonNearby arachnotron;wait 1;pukename SummonFriendlyActorNearby'
            }
            painElemental = @{
                actionId    = "painElemental"
                actionName  = "Pain Elemental"
                applicationData = 'SET CV_s_actorNameToSummonNearby painElemental;wait 1;pukename SummonFriendlyActorNearby'
            }
            revenant = @{
                actionId    = "revenant"
                actionName  = "Revenant"
                applicationData = 'SET CV_s_actorNameToSummonNearby revenant;wait 1;pukename SummonFriendlyActorNearby'
            }
            fatso = @{
                actionId    = "fatso"
                actionName  = "Mancubus"
                applicationData = 'SET CV_s_actorNameToSummonNearby fatso;wait 1;pukename SummonFriendlyActorNearby'
            }
            archVile = @{
                actionId    = "archVile"
                actionName  = "Arch-Vile"
                applicationData = 'SET CV_s_actorNameToSummonNearby archVile;wait 1;pukename SummonFriendlyActorNearby'
            }
            spiderMastermind = @{
                actionId    = "spiderMastermind"
                actionName  = "Spider Mastermind"
                applicationData = 'SET CV_s_actorNameToSummonNearby spiderMastermind;wait 1;pukename SummonFriendlyActorNearby'
            }
            cyberdemon = @{
                actionId    = "cyberdemon"
                actionName  = "Cyberdemon"
                applicationData = 'SET CV_s_actorNameToSummonNearby cyberdemon;wait 1;pukename SummonFriendlyActorNearby'
            }
            wolfensteinSS = @{
                actionId    = "wolfensteinSS"
                actionName  = "Wolfenstein Trooper"
                applicationData = 'SET CV_s_actorNameToSummonNearby wolfensteinSS;wait 1;pukename SummonFriendlyActorNearby'
            }
            marineFist = @{
                actionId    = "marineFist"
                actionName  = "Doom Trooper Pugilist"
                applicationData = 'SET CV_s_actorNameToSummonNearby marineFist;wait 1;pukename SummonFriendlyActorNearby'
            }
            marineBerserk = @{
                actionId    = "marineBerserk"
                actionName  = "Doom Trooper Berseker"
                applicationData = 'SET CV_s_actorNameToSummonNearby marineBerserk;wait 1;pukename SummonFriendlyActorNearby'
            }
            marineChainsaw = @{
                actionId    = "marineChainsaw"
                actionName  = "Doom Trooper w/ Chainsaw"
                applicationData = 'SET CV_s_actorNameToSummonNearby marineChainsaw;wait 1;pukename SummonFriendlyActorNearby'
            }
            marinePistol = @{
                actionId    = "marinePistol"
                actionName  = "Doom Trooper w/ Pistol"
                applicationData = 'SET CV_s_actorNameToSummonNearby marinePistol;wait 1;pukename SummonFriendlyActorNearby'
            }
            marineShotgun = @{
                actionId    = "marineShotgun"
                actionName  = "Doom Trooper w/ Classic Shotgun"
                applicationData = 'SET CV_s_actorNameToSummonNearby marineShotgun;wait 1;pukename SummonFriendlyActorNearby'
            }
            marineSSG = @{
                actionId    = "marineSSG"
                actionName  = "Doom Trooper w/ Super Shotgun"
                applicationData = 'SET CV_s_actorNameToSummonNearby marineSSG;wait 1;pukename SummonFriendlyActorNearby'
            }
            marineChaingun = @{
                actionId    = "marineChaingun"
                actionName  = "Doom Trooper w/ Chaingun"
                applicationData = 'SET CV_s_actorNameToSummonNearby marineChaingun;wait 1;pukename SummonFriendlyActorNearby'
            }
            marineRocket = @{
                actionId    = "marineRocket"
                actionName  = "Doom Trooper w/ Rocket Launcher"
                applicationData = 'SET CV_s_actorNameToSummonNearby marineRocket;wait 1;pukename SummonFriendlyActorNearby'
            }
            marinePlasma = @{
                actionId    = "marinePlasma"
                actionName  = "Doom Trooper w/ Plasma Rifle"
                applicationData = 'SET CV_s_actorNameToSummonNearby marinePlasma;wait 1;pukename SummonFriendlyActorNearby'
            }
            marineBFG = @{
                actionId    = "marineBFG"
                actionName  = "Doom Trooper w/ BFG"
                applicationData = 'SET CV_s_actorNameToSummonNearby marineBFG;wait 1;pukename SummonFriendlyActorNearby'
            }
        }
    }

    CMD_CONSOLE_COMMAND_SUMMONACTORNEARBY_DOOM_PICKUPS = @{
        categoryId   = "CMD_CONSOLE_COMMAND_SUMMONACTORNEARBY_DOOM_PICKUPS"
        categoryName = "Summon DOOM Pickup In-Front-Of/Nearby Player"

        actions = @{
            stimpack = @{
                actionId    = "stimpack"
                actionName  = "Stimpack"
                applicationData = 'SET CV_s_actorNameToSummonNearby stimpack;pukename SummonActorNearby'
            }
            medikit = @{
                actionId    = "medikit"
                actionName  = "Medikit"
                applicationData = 'SET CV_s_actorNameToSummonNearby medikit;pukename SummonActorNearby'
            }
            healthBonus = @{
                actionId    = "healthBonus"
                actionName  = "Health Bonus"
                applicationData = 'SET CV_s_actorNameToSummonNearby healthbonus;pukename SummonActorNearby'
            }
            soulsphere = @{
                actionId    = "soulsphere"
                actionName  = "Soul Sphere"
                applicationData = 'SET CV_s_actorNameToSummonNearby soulsphere;pukename SummonActorNearby'
            }
            megasphere = @{
                actionId    = "megasphere"
                actionName  = "Megasphere"
                applicationData = 'SET CV_s_actorNameToSummonNearby megasphere;pukename SummonActorNearby'
            }
            greenArmor = @{
                actionId    = "greenArmor"
                actionName  = "Green Armor"
                applicationData = 'SET CV_s_actorNameToSummonNearby greenarmor;pukename SummonActorNearby'
            }
            blueArmor = @{
                actionId    = "blueArmor"
                actionName  = "Blue Armor"
                applicationData = 'SET CV_s_actorNameToSummonNearby bluearmor;pukename SummonActorNearby'
            }
            armorBonus = @{
                actionId    = "armorBonus"
                actionName  = "Armor Bonus"
                applicationData = 'SET CV_s_actorNameToSummonNearby armorbonus;pukename SummonActorNearby'
            }
            berserk = @{
                actionId    = "berserk"
                actionName  = "Berserk Pack"
                applicationData = 'SET CV_s_actorNameToSummonNearby berserk;pukename SummonActorNearby'
            }
            invulnerabilitySphere = @{
                actionId    = "invulnerabilitySphere"
                actionName  = "Invulnerability Sphere"
                applicationData = 'SET CV_s_actorNameToSummonNearby invulnerabilitySphere;pukename SummonActorNearby'
            }
            BlurSphere = @{
                actionId    = "BlurSphere"
                actionName  = "Partial Invisibility"
                applicationData = 'SET CV_s_actorNameToSummonNearby BlurSphere;pukename SummonActorNearby'
            }
            radSuit = @{
                actionId    = "radSuit"
                actionName  = "Radiation Suit"
                applicationData = 'SET CV_s_actorNameToSummonNearby RadSuit;pukename SummonActorNearby'
            }
            allMap = @{
                actionId    = "allMap"
                actionName  = "Computer Area Map"
                applicationData = 'SET CV_s_actorNameToSummonNearby allmap;pukename SummonActorNearby'
            }
            infrared = @{
                actionId    = "infrared"
                actionName  = "Light Amplification Goggles"
                applicationData = 'SET CV_s_actorNameToSummonNearby infrared;pukename SummonActorNearby'
            }
            chainsaw = @{
                actionId    = "chainsaw"
                actionName  = "Chainsaw"
                applicationData = 'SET CV_s_actorNameToSummonNearby chainsaw;pukename SummonActorNearby'
            }
            pistol = @{
                actionId    = "pistol"
                actionName  = "Pistol"
                applicationData = 'SET CV_s_actorNameToSummonNearby pistol;pukename SummonActorNearby'
            }
            clip = @{
                actionId    = "clip"
                actionName  = "Ammo Clip"
                applicationData = 'SET CV_s_actorNameToSummonNearby clip;pukename SummonActorNearby'
            }
            shotgun = @{
                actionId    = "shotgun"
                actionName  = "Shotgun"
                applicationData = 'SET CV_s_actorNameToSummonNearby shotgun;pukename SummonActorNearby'
            }
            superShotgun = @{
                actionId    = "superShotgun"
                actionName  = "Super Shotgun"
                applicationData = 'SET CV_s_actorNameToSummonNearby supershotgun;pukename SummonActorNearby'
            }
            shells = @{
                actionId    = "shells"
                actionName  = "Shotgun Shells"
                applicationData = 'SET CV_s_actorNameToSummonNearby shells;pukename SummonActorNearby'
            }
            shellBox = @{
                actionId    = "shellBox"
                actionName  = "Box of Shells"
                applicationData = 'SET CV_s_actorNameToSummonNearby shellbox;pukename SummonActorNearby'
            }
            chaingun = @{
                actionId    = "chaingun"
                actionName  = "Chaingun"
                applicationData = 'SET CV_s_actorNameToSummonNearby chaingun;pukename SummonActorNearby'
            }
            clipBox = @{
                actionId    = "clipBox"
                actionName  = "Box of Bullets"
                applicationData = 'SET CV_s_actorNameToSummonNearby clipbox;pukename SummonActorNearby'
            }
            rocketLauncher = @{
                actionId    = "rocketLauncher"
                actionName  = "Rocket Launcher"
                applicationData = 'SET CV_s_actorNameToSummonNearby rocketlauncher;pukename SummonActorNearby'
            }
            rocketAmmo = @{
                actionId    = "rocketAmmo"
                actionName  = "Rocket"
                applicationData = 'SET CV_s_actorNameToSummonNearby rocketammo;pukename SummonActorNearby'
            }
            rocketBox = @{
                actionId    = "rocketBox"
                actionName  = "Box of Rockets"
                applicationData = 'SET CV_s_actorNameToSummonNearby rocketbox;pukename SummonActorNearby'
            }
            plasmaRifle = @{
                actionId    = "plasmaRifle"
                actionName  = "Plasma Rifle"
                applicationData = 'SET CV_s_actorNameToSummonNearby plasmagun;pukename SummonActorNearby'
            }
            bfg9000 = @{
                actionId    = "bfg9000"
                actionName  = "BFG 9000"
                applicationData = 'SET CV_s_actorNameToSummonNearby bfg9000;pukename SummonActorNearby'
            }
            cell = @{
                actionId    = "cell"
                actionName  = "Energy Cell"
                applicationData = 'SET CV_s_actorNameToSummonNearby cell;pukename SummonActorNearby'
            }
            cellPack = @{
                actionId    = "cellPack"
                actionName  = "Cell Pack"
                applicationData = 'SET CV_s_actorNameToSummonNearby cellpack;pukename SummonActorNearby'
            }
        }
    }

    CMD_CONSOLE_COMMAND_SUMMONACTORNEARBY_BW_MONSTER = @{
        categoryId   = "CMD_CONSOLE_COMMAND_SUMMONACTORNEARBY_BW_MONSTER"
        categoryName = "Summon BWolf Monster In-Front-Of/Nearby Player"

        actions = @{
            BWArchvile = @{
                actionId    = "BWArchvile"
                actionName  = "BD Arch-Vile"
                applicationData = 'SET CV_s_actorNameToSummonNearby BWArchvile;pukename SummonActorNearby'
            }
			BWBaronOfHell = @{
                actionId    = "BWBaronOfHell"
                actionName  = "BD Baron of Hell"
                applicationData = 'SET CV_s_actorNameToSummonNearby BWBaronOfHell;pukename SummonActorNearby'
            }
			zombie_man = @{
                actionId    = "zombie_man"
                actionName  = "Brown Guard"
                applicationData = 'SET CV_s_actorNameToSummonNearby zombie_man;wait 1;pukename SummonActorNearby'
            }
			P38Guard = @{
				actionId = "P38Guard"
				actionName = "Brown Guard w/P38"
				applicationData = 'SET CV_s_actorNameToSummonNearby P38Guard;wait 1;pukename SummonActorNearby'
			}
            BWCaco = @{
                actionId    = "BWCaco"
                actionName  = "BD Cacodemon"
                applicationData = 'SET CV_s_actorNameToSummonNearby BWCaco;pukename SummonActorNearby'
            }
			dog = @{
				actionId    = "dog"
                actionName  = "Dog"
                applicationData = 'SET CV_s_actorNameToSummonNearby dog;pukename SummonActorNearby'
			}
			P_GHOST = @{
                actionId    = "P_GHOST"
                actionName  = "Pacman Ghost (Instadeath)"
                applicationData = 'SET CV_s_actorNameToSummonNearby P_GHOST;pukename SummonActorNearby'
            }
			femaleguard = @{
				actionId = "femaleguard"
				actionName = "Female Guard"
				applicationData = 'SET CV_s_actorNameToSummonNearby NAZIGIRL;wait 1;pukename SummonActorNearby'
			}
			FG42Nazi = @{
				actionId = "FG42Nazi"
				actionName = "FG42 Panzergrenadier"
				applicationData = 'SET CV_s_actorNameToSummonNearby FG42Nazi;wait 1;pukename SummonActorNearby'
			}
			FlameSoldier = @{
				actionId = "FlameSoldier"
				actionName = "Flame Soldier"
				applicationData = 'SET CV_s_actorNameToSummonNearby FlameSoldier;wait 1;pukename SummonActorNearby'
			}
			SoldierMutant = @{
				actionId = "SoldierMutant"
				actionName = "Heavy Mutant"
				applicationData = 'SET CV_s_actorNameToSummonNearby SoldierMutant;wait 1;pukename SummonActorNearby'
			}
			BrutalDoomImp = @{
				actionId = "BrutalDoomImp"
				actionName = "BD Imp"
				applicationData = 'SET CV_s_actorNameToSummonNearby BrutalDoomImp;wait 1;pukename SummonActorNearby'
			}
			BW_Kamikaze = @{
				actionId = "BW_Kamikaze"
				actionName = "SeriousSam Headless Kamikaze"
				applicationData = 'SET CV_s_actorNameToSummonNearby BW_Kamikaze;wait 1;pukename SummonActorNearby'
			}
			BWLOSTSOUL = @{
				actionId = "BWLOSTSOUL"
				actionName = "BD Lost Soul"
				applicationData = 'SET CV_s_actorNameToSummonNearby BWLOSTSOUL;wait 1;pukename SummonActorNearby'
			}
			NAZIOFFICER = @{
				actionId = "NAZIOFFICER"
				actionName = "Officer w/MP40"
				applicationData = 'SET CV_s_actorNameToSummonNearby NAZIOFFICER;wait 1;pukename SummonActorNearby'
			}
			Ziomutant = @{
				actionId = "Ziomutant"
				actionName = "Mutant w/ Knife"
				applicationData = 'SET CV_s_actorNameToSummonNearby Ziomutant;wait 1;pukename SummonActorNearby'
			}
			Nazi = @{
				actionId = "Nazi"
				actionName = "Blue Guard"
				applicationData = 'SET CV_s_actorNameToSummonNearby Nazi;wait 1;pukename SummonActorNearby'
			}
			Panzergrenadier = @{
				actionId = "Panzergrenadier"
				actionName = "Panzergrenadier"
				applicationData = 'SET CV_s_actorNameToSummonNearby Panzergrenadier;wait 1;pukename SummonActorNearby'
			}
			BWPinky = @{
				actionId = "BWPinky"
				actionName = "BD Pinky"
				applicationData = 'SET CV_s_actorNameToSummonNearby BWPinky;wait 1;pukename SummonActorNearby'
			}
			Rifle_man = @{
				actionId = "Rifle_man"
				actionName = "Brown Guard w/Rifle"
				applicationData = 'SET CV_s_actorNameToSummonNearby Rifle_man;wait 1;pukename SummonActorNearby'
			}
			Scientist = @{
				actionId = "Scientist"
				actionName = "Scientist"
				applicationData = 'SET CV_s_actorNameToSummonNearby Scientist;wait 1;pukename SummonActorNearby'
			}
			ShotgunGuy1 = @{
				actionId = "ShotgunGuy1"
				actionName = "White Suit Officer"
				applicationData = 'SET CV_s_actorNameToSummonNearby ShotgunGuy1;wait 1;pukename SummonActorNearby'
			}
			TRIADGUARD = @{
				actionId = "TRIADGUARD"
				actionName = "Rise of the Triad Guard"
				applicationData = 'SET CV_s_actorNameToSummonNearby TRIADGUARD;wait 1;pukename SummonActorNearby'
			}
			UberSoldat = @{
				actionId = "UberSoldat"
				actionName = "Ubersoldat (Cyberdemon)"
				applicationData = 'SET CV_s_actorNameToSummonNearby UberSoldat;wait 1;pukename SummonActorNearby'
			}
			InsaneEnemySpawner = @{
				actionId = "InsaneEnemySpawner"
				actionName = "Random Tough Enemy"
				applicationData = 'SET CV_s_actorNameToSummonNearby InsaneEnemySpawner;wait 1;pukename SummonActorNearby'
			}
			EasyInsaneEnemySpawner = @{
				actionId = "EasyInsaneEnemySpawner"
				actionName = "Random Easy Enemy"
				applicationData = 'SET CV_s_actorNameToSummonNearby EasyInsaneEnemySpawner;wait 1;pukename SummonActorNearby'
			}
        }
    }

    CMD_CONSOLE_COMMAND_SUMMONFRIENDLYACTORNEARBY_BW_MONSTER = @{
        categoryId   = "CMD_CONSOLE_COMMAND_SUMMONFRIENDLYACTORNEARBY_BW_MONSTER"
        categoryName = "Summon Friendly BWolf Monster In-Front-Of/Nearby Player"

        actions = @{
            BWArchvile = @{
                actionId    = "BWArchvile"
                actionName  = "BD Arch-Vile"
                applicationData = 'SET CV_s_actorNameToSummonNearby BWArchvile;pukename SummonFriendlyActorNearby'
            }
			BWBaronOfHell = @{
                actionId    = "BWBaronOfHell"
                actionName  = "BD Baron of Hell"
                applicationData = 'SET CV_s_actorNameToSummonNearby BWBaronOfHell;pukename SummonFriendlyActorNearby'
            }
			zombie_man = @{
                actionId    = "zombie_man"
                actionName  = "Brown Guard"
                applicationData = 'SET CV_s_actorNameToSummonNearby zombie_man;wait 1;pukename SummonFriendlyActorNearby'
            }
			P38Guard = @{
				actionId = "P38Guard"
				actionName = "Brown Guard w/P38"
				applicationData = 'SET CV_s_actorNameToSummonNearby P38Guard;wait 1;pukename SummonFriendlyActorNearby'
			}
            BWCaco = @{
                actionId    = "BWCaco"
                actionName  = "BD Cacodemon"
                applicationData = 'SET CV_s_actorNameToSummonNearby BWCaco;pukename SummonFriendlyActorNearby'
            }
			dog = @{
				actionId    = "dog"
                actionName  = "Dog"
                applicationData = 'SET CV_s_actorNameToSummonNearby dog;pukename SummonFriendlyActorNearby'
			}
			femaleguard = @{
				actionId = "femaleguard"
				actionName = "Female Guard"
				applicationData = 'SET CV_s_actorNameToSummonNearby NAZIGIRL;wait 1;pukename SummonFriendlyActorNearby'
			}
			FG42Nazi = @{
				actionId = "FG42Nazi"
				actionName = "FG42 Panzergrenadier"
				applicationData = 'SET CV_s_actorNameToSummonNearby FG42Nazi;wait 1;pukename SummonFriendlyActorNearby'
			}
			FlameSoldier = @{
				actionId = "FlameSoldier"
				actionName = "Flame Soldier"
				applicationData = 'SET CV_s_actorNameToSummonNearby FlameSoldier;wait 1;pukename SummonFriendlyActorNearby'
			}
			SoldierMutant = @{
				actionId = "SoldierMutant"
				actionName = "Heavy Mutant"
				applicationData = 'SET CV_s_actorNameToSummonNearby SoldierMutant;wait 1;pukename SummonFriendlyActorNearby'
			}
			BrutalDoomImp = @{
				actionId = "BrutalDoomImp"
				actionName = "BD Imp"
				applicationData = 'SET CV_s_actorNameToSummonNearby BrutalDoomImp;wait 1;pukename SummonFriendlyActorNearby'
			}
			BW_Kamikaze = @{
				actionId = "BW_Kamikaze"
				actionName = "SeriousSam Headless Kamikaze"
				applicationData = 'SET CV_s_actorNameToSummonNearby BW_Kamikaze;wait 1;pukename SummonFriendlyActorNearby'
			}
			BWLOSTSOUL = @{
				actionId = "BWLOSTSOUL"
				actionName = "BD Lost Soul"
				applicationData = 'SET CV_s_actorNameToSummonNearby BWLOSTSOUL;wait 1;pukename SummonFriendlyActorNearby'
			}
			NAZIOFFICER = @{
				actionId = "NAZIOFFICER"
				actionName = "White Officer w/MP40"
				applicationData = 'SET CV_s_actorNameToSummonNearby NAZIOFFICER;wait 1;pukename SummonFriendlyActorNearby'
			}
			Ziomutant = @{
				actionId = "Ziomutant"
				actionName = "Mutant w/ Knife"
				applicationData = 'SET CV_s_actorNameToSummonNearby Ziomutant;wait 1;pukename SummonFriendlyActorNearby'
			}
			Nazi = @{
				actionId = "Nazi"
				actionName = "Blue Guard"
				applicationData = 'SET CV_s_actorNameToSummonNearby Nazi;wait 1;pukename SummonFriendlyActorNearby'
			}
			Panzergrenadier = @{
				actionId = "Panzergrenadier"
				actionName = "Panzergrenadier"
				applicationData = 'SET CV_s_actorNameToSummonNearby Panzergrenadier;wait 1;pukename SummonFriendlyActorNearby'
			}
			BWPinky = @{
				actionId = "BWPinky"
				actionName = "BD Pinky"
				applicationData = 'SET CV_s_actorNameToSummonNearby BWPinky;wait 1;pukename SummonFriendlyActorNearby'
			}
			Rifle_man = @{
				actionId = "Rifle_man"
				actionName = "Brown Guard w/Rifle"
				applicationData = 'SET CV_s_actorNameToSummonNearby Rifle_man;wait 1;pukename SummonFriendlyActorNearby'
			}
			Scientist = @{
				actionId = "Scientist"
				actionName = "Scientist"
				applicationData = 'SET CV_s_actorNameToSummonNearby Scientist;wait 1;pukename SummonFriendlyActorNearby'
			}
			ShotgunGuy1 = @{
				actionId = "ShotgunGuy1"
				actionName = "White Officer"
				applicationData = 'SET CV_s_actorNameToSummonNearby ShotgunGuy1;wait 1;pukename SummonFriendlyActorNearby'
			}
			TRIADGUARD = @{
				actionId = "TRIADGUARD"
				actionName = "Rise of the Triad Guard"
				applicationData = 'SET CV_s_actorNameToSummonNearby TRIADGUARD;wait 1;pukename SummonFriendlyActorNearby'
			}
			UberSoldat = @{
				actionId = "UberSoldat"
				actionName = "Ubersoldat (Cyberdemon)"
				applicationData = 'SET CV_s_actorNameToSummonNearby UberSoldat;wait 1;pukename SummonFriendlyActorNearby'
			}
        }
    }

    CMD_CONSOLE_COMMAND_SUMMONACTORNEARBY_BW_PICKUPS = @{
        categoryId   = "CMD_CONSOLE_COMMAND_SUMMONACTORNEARBY_BW_PICKUPS"
        categoryName = "Summon BWolf Pickup In-Front-Of/Nearby Player"

        actions = @{
            Cross = @{
				actionId    = "Cross"
                actionName  = "Treasure: Cross"
                applicationData = 'SET CV_s_actorNameToSummonNearby Cross;pukename SummonActorNearby'
			}
			Chalice = @{
				actionId    = "Chalice"
                actionName  = "Treasure: Chalice"
                applicationData = 'SET CV_s_actorNameToSummonNearby Chalice;pukename SummonActorNearby'
			}
			Chest = @{
				actionId    = "Chest"
                actionName  = "Treasure: Chest"
                applicationData = 'SET CV_s_actorNameToSummonNearby Chest;pukename SummonActorNearby'
			}
			Crown = @{
				actionId    = "Crown"
                actionName  = "Treasure: Crown"
                applicationData = 'SET CV_s_actorNameToSummonNearby Crown;pukename SummonActorNearby'
			}
			Radio = @{
				actionId    = "Radio"
                actionName  = "Treasure: Radio"
                applicationData = 'SET CV_s_actorNameToSummonNearby Radio;pukename SummonActorNearby'
			}
			goldenvase = @{
				actionId    = "goldenvase"
                actionName  = "Treasure: Golden Vase"
                applicationData = 'SET CV_s_actorNameToSummonNearby goldenvase;pukename SummonActorNearby'
			}
			TRBomb = @{
				actionId    = "TRBomb"
                actionName  = "Treasure: Control Panel"
                applicationData = 'SET CV_s_actorNameToSummonNearby TRBomb;pukename SummonActorNearby'
			}
			TRBomb2 = @{
				actionId    = "TRBomb2"
                actionName  = "Treasure: Bomb"
                applicationData = 'SET CV_s_actorNameToSummonNearby TRBomb2;pukename SummonActorNearby'
			}
			LifeSphere = @{
                actionId    = "LifeSphere"
                actionName  = "Powerup: Extra Health"
                applicationData = 'SET CV_s_actorNameToSummonNearby LifeSphere;pukename SummonActorNearby'
            }
			EnergySphere = @{
                actionId    = "EnergySphere"
                actionName  = "Powerup: Mega Sfera"
                applicationData = 'SET CV_s_actorNameToSummonNearby EnergySphere;pukename SummonActorNearby'
            }
			Berserl1 = @{
                actionId    = "Berserl1"
                actionName  = "Powerup: Berserk Pack"
                applicationData = 'SET CV_s_actorNameToSummonNearby Berserl1;pukename SummonActorNearby'
            }
			DemonStrengthRune = @{
                actionId    = "DemonStrengthRune"
                actionName  = "Powerup: Demon Strength Rune"
                applicationData = 'SET CV_s_actorNameToSummonNearby DemonStrengthRune;pukename SummonActorNearby'
            }
			HealthPlus = @{
                actionId    = "HealthPlus"
                actionName  = "Health: Dog Food (+4)"
                applicationData = 'SET CV_s_actorNameToSummonNearby HealthPlus;pukename SummonActorNearby'
            }
			Stimpack2 = @{
                actionId    = "Stimpack2"
                actionName  = "Health: Chicken Dinner (+10)"
                applicationData = 'SET CV_s_actorNameToSummonNearby Stimpack2;pukename SummonActorNearby'
            }
			MegaMedikit = @{
                actionId    = "MegaMedikit"
                actionName  = "Health: First Aid Kit (+100)"
                applicationData = 'SET CV_s_actorNameToSummonNearby MegaMedikit;pukename SummonActorNearby'
            }
			TheRealUberHealth = @{
                actionId    = "TheRealUberHealth"
                actionName  = "Health: Uber-Health (+200)"
                applicationData = 'SET CV_s_actorNameToSummonNearby TheRealUberHealth;pukename SummonActorNearby'
            }
			MiniMediKit = @{
                actionId    = "MiniMediKit"
                actionName  = "Health: Mini-Med Kit (+5)"
                applicationData = 'SET CV_s_actorNameToSummonNearby MiniMediKit;pukename SummonActorNearby'
			}
			Medikit2 = @{
                actionId    = "Medikit2"
                actionName  = "Health: Med Kit (+25)"
                applicationData = 'SET CV_s_actorNameToSummonNearby Medikit2;pukename SummonActorNearby'
			}
			GermanAndUsaWeaponReplacer = @{
				actionId    = "GermanAndUsaWeaponReplacer"
                actionName  = "Random Weapon"
                applicationData = 'SET CV_s_actorNameToSummonNearby GermanAndUsaWeaponReplacer;pukename SummonActorNearby'
			}
			GermanUsaAmmo = @{
				actionId = "GermanUsaAmmo"
				actionName = "Random Ammo"
				applicationData = 'SET CV_s_actorNameToSummonNearby GermanUsaAmmo;pukename SummonActorNearby'
			}
        }
    }

    CMD_CONSOLE_COMMAND_GIVE_ALL_OF = @{
        categoryId   = "CMD_CONSOLE_COMMAND_GIVE_ALL_OF"
        categoryName = "Give Player Max Amounts"

        actions = @{
            all = @{
                actionId    = "all"
                actionName  = "ALL (Basic Weapons, Keys, Full Ammo + Health + Armor)"
                applicationData = 'give all'
            }
            everything = @{
                actionId    = "everything"
                actionName  = "EVERYTHING (ALL + Extra Weapons)"
                applicationData = 'give everything'
            }
            ammo = @{
                actionId    = "ammo"
                actionName  = "Full Ammo"
                applicationData = 'give ammo'
            }
            health = @{
                actionId    = "health"
                actionName  = "Full Health"
                applicationData = 'give health'
            }
            weapons = @{
                actionId    = "weapons"
                actionName  = "All Basic Weapons"
                applicationData = 'give weapons'
            }
            armor = @{
                actionId    = "armor"
                actionName  = "Full Armor"
                applicationData = 'give armor'
            }
            keys = @{
                actionId    = "keys"
                actionName  = "All Keys"
                applicationData = 'give keys'
            }
            backpack = @{
                actionId    = "backpack"
                actionName  = "Increase Ammo Capacity (Backpack)"
                applicationData = 'give backpack'
            }
        }
    }

    CMD_CONSOLE_COMMAND_GIVE_DOOM_POWERUP = @{
        categoryId   = "CMD_CONSOLE_COMMAND_GIVE_DOOM_POWERUP"
        categoryName = "Give Player DOOM Powerup"

        actions = @{
            allmap = @{
                actionId    = "allmap"
                actionName  = "Map Computer"
                applicationData = 'give allmap'
            }
            berserk = @{
                actionId    = "berserk"
                actionName  = "Berserker"
                applicationData = 'give berserk'
            }
            blursphere = @{
                actionId    = "blursphere"
                actionName  = "Invisibility"
                applicationData = 'give blursphere'
            }
            infrared = @{
                actionId    = "infrared"
                actionName  = "Light Amp Goggles"
                applicationData = 'give infrared'
            }
            invulnerabilitySphere = @{
                actionId    = "invulnerabilitySphere"
                actionName  = "Invulnerability Sphere"
                applicationData = 'give invulnerabilitySphere'
            }
            megasphere = @{
                actionId    = "megasphere"
                actionName  = "MegaSphere"
                applicationData = 'give megasphere'
            }
            radsuit = @{
                actionId    = "radsuit"
                actionName  = "Environmental Suit"
                applicationData = 'give radsuit'
            }
            soulsphere = @{
                actionId    = "soulsphere"
                actionName  = "SoulSphere"
                applicationData = 'give soulsphere'
            }
        }
    }

    CMD_CONSOLE_COMMAND_PUKE = @{
        categoryId   = "CMD_CONSOLE_COMMAND_PUKE"
        categoryName = "Execute Script by Number"

        actions = @{
            puke_666 = @{
                actionId    = "puke_666"
                actionName  = "Script 666: Undefined Script"
                applicationData = 'puke 666'
            }
			pukename_unknown = @{
                actionId    = "pukename_unknown"
                actionName  = "Script Unknown: Undefined Script"
                applicationData = 'pukename unknown'
            }
        }
    }

    CMD_CONSOLE_COMMAND_SINGLE = @{
        categoryId   = "CMD_CONSOLE_COMMAND_SINGLE"
        categoryName = "Execute Console Command (Common Singles)"

        actions = @{
            god = @{
                actionId    = "god"
                actionName  = "Toggle God"
                applicationData = 'god'
            }
            noclip = @{
                actionId    = "noclip"
                actionName  = "Toggle Clipping"
                applicationData = 'noclip'
            }
            notarget = @{
                actionId    = "notarget"
                actionName  = "Toggle No Target"
                applicationData = 'notarget'
            }
            resurrect = @{
                actionId    = "resurrect"
                actionName  = "Resurrect Player"
                applicationData = 'resurrect'
            }
        }
    }

    CMD_CONSOLE_COMMAND_MACRO = @{
        categoryId   = "CMD_CONSOLE_COMMAND_MACRO"
        categoryName = "Execute Console Command (Macro)"

        actions = @{
            giveall = @{
                actionId    = "buff"
                actionName  = "!buff: Heal, Repair Armor, Reload Weapons"
                applicationData = 'give health; give armor; give ammo'
            }
        }
    }

    CMD_CVAR_SET = @{
        categoryId   = "CMD_CVAR_SET"
        categoryName = "Set CVAR to a Predefined Value"

        actions = @{
            set1 = @{
                actionId    = "set1"
                actionName  = "CV_n_Dummy = 666"
                applicationData = 'set CV_n_Dummy 666'
            }
            set2 = @{
                actionId    = "set2"
                actionName  = "CV_b_Dummy = true"
                applicationData = 'set CV_b_Dummy TRUE'
            }
            set3 = @{
                actionId    = "set3"
                actionName  = "CV_s_Dummy = Hello World"
                applicationData = 'set CV_s_Dummy "Hello World"'
            }
        }
    }

    CMD_CVAR_GET = @{
        categoryId   = "CMD_CVAR_GET"
        categoryName = "Get CVAR value, Update Client & Console Log"

        actions = @{
            get1 = @{
                actionId    = "get1"
                actionName  = "CV_n_Dummy"
                applicationData = 'get CV_n_Dummy'
            }
            get2 = @{
                actionId    = "get2"
                actionName  = "CV_b_Dummy"
                applicationData = 'get CV_b_Dummy'
            }
            get3 = @{
                actionId    = "get3"
                actionName  = "CV_s_Dummy"
                applicationData = 'get CV_s_Dummy'
            }
        }
    }

    CMD_CONSOLE_COMMAND_TIKFINITY_EVENT = @{
        categoryId   = "CMD_CONSOLE_COMMAND_TIKFINITY_EVENT"
        categoryName = "TikFinity Trigger"

        actions = @{
            triggerTypeId1 = @{
                actionId    = "triggerTypeId1"
                actionName  = "Share"
                applicationData = 'echo "{{context.username}} shares the live."'
            }
            triggerTypeId2 = @{
                actionId    = "triggerTypeId2"
                actionName  = "Command"
                applicationData = 'echo "{{context.username}}: {{context.comment}}"'
            }
            triggerTypeId3 = @{
                actionId    = "triggerTypeId3"
                actionName  = "Gift (min coins value)"
                applicationData = 'echo "{{context.username}} gifts {{context.repeatCount}} coins to {{context.tikfinityUsername}}."'
            }
			triggerTypeId4 = @{
                actionId    = "triggerTypeId4"
                actionName  = "Specific Gift"
				applicationData = 'echo "{{context.username}} sends {{context.repeatCount}} {{context.giftName}}s to {{context.tikfinityUsername}}."'
            }
			triggerTypeId6 = @{
                actionId    = "triggerTypeId6"
                actionName  = "Join"
                applicationData = 'echo "{{context.username}} has joined the game."'
            }
			triggerTypeId7 = @{
                actionId    = "triggerTypeId7"
                actionName  = "Likes"
                applicationData = 'echo "{{context.username}} sends {{context.repeatCount}} likes."'
            }
			triggerTypeId9 = @{
                actionId    = "triggerTypeId9"
                actionName  = "Follow"
                applicationData = 'echo "{{context.username}} has followed {{context.tikfinityUsername}}.'
            }
			triggerTypeId10 = @{
                actionId    = "triggerTypeId10"
                actionName  = "Subscribe"
                applicationData = 'echo "{{context.username}} has subscribed for {{context.subMonth}} months.'
            }
			triggerTypeId11 = @{
                actionId    = "triggerTypeId11"
                actionName  = "Chat (any message)"
                applicationData = 'echo "{{context.username}}: {{context.comment}}"'
            }
			triggerTypeId12 = @{
                actionId    = "triggerTypeId12"
                actionName  = "Emote"
                applicationData = 'echo "{{context.userName}}: ;-P"'
            }
			triggerTypeId13 = @{
                actionId    = "triggerTypeId13"
                actionName  = "First User Activity"
                applicationData = 'echo "{{context.userName}} has entered chat."'
            }
        }
    }


}
Write-Host "[GZDoom_REST_API_Actions] Library Loaded" -ForegroundColor Gray
# REST API Data Definitions for Actions ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
