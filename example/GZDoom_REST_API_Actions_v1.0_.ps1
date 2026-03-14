Write-Host "[GZDoom_REST_API_Actions] Loading Library..." -ForegroundColor Gray
# REST API Data Definitions for Actions ----------------
# Action definitions
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
            cyberFairFight = @{
                actionId    = "cyberFairFight"
                actionName  = "!cyberdemon: Heal, Equip, Summon Cyberdemon"
                applicationData = 'give health; give armor; give ammo; summon cyberdemon; echo "incoming cyberdemon!"'
            }
            giveall = @{
                actionId    = "giveall"
                actionName  = "!giveall: Heal, Armor, Weapons"
                applicationData = 'give health; give armor; give weapons'
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

}
Write-Host "[GZDoom_REST_API_Actions] Library Loaded" -ForegroundColor Gray
# REST API Data Definitions for Actions ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^