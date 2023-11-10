---@class QuestieOptionsDefaults
local QuestieOptionsDefaults = QuestieLoader:CreateModule("QuestieOptionsDefaults");

function QuestieOptionsDefaults:Load()
    return {
        profile = {
            clusterLevelHotzone = 50,
            enableIconLimit = false,
            iconLimit = 200,
            availableScale = 1.2,
            eventScale = 1.35,
            lootScale = 1,
            iconFadeLevel = 0.3,
            trackerLocked = true,
            monsterScale = 1,
            objectScale = 1,
            globalScale = 0.6,
            globalMiniMapScale = 0.7,
            fadeLevel = 20,
            fadeOverPlayer = true,
            fadeOverPlayerLevel = 0.5,
            fadeOverPlayerDistance = 5,
            nameplateX = -17,
            nameplateY = -7,
            nameplateScale = 1,
            nameplateEnabled = true,
            minimapCoordinatesEnabled = false,
            mapCoordinatesEnabled = true,
            mapCoordinatePrecision = 1,
            dbmHUDEnable = false,
            dbmHUDShowAlert = true,
            DBMHUDRefresh = 0.03,
            DBMHUDZoom = 100,
            dbmHUDRadius = 3,
            dbmHUDShowQuest = true,
            dbmHUDShowSlay = false,
            dbmHUDShowLoot = false,
            dbmHUDShowInteract = true,
            mapShowHideEnabled = true,
            nameplateTargetFrameEnabled = true,
            nameplateTargetFrameX = -30,
            nameplateTargetFrameY = 25,
            nameplateTargetFrameScale = 1.7,
            alwaysGlowMap = true,
            alwaysGlowMinimap = false,
            questObjectiveColors = false,
            questMinimapObjectiveColors = false,
            enableObjectives = true,
            enableTurnins = true,
            enableAvailable = true,
            enableTooltips = true,
            enableTooltipsQuestLevel = true,
            showQuestXpAtMaxLevel = true,
            enableMapIcons = true,
            enableMiniMapIcons = true,
            questieShutUp = false,
            bugWorkarounds = true,
            hideIconsOnContinents = false,

            -- Tracker Settings Tab
            autoTrackQuests = true,
            trackerShowCompleteQuests = true,
            trackerShowQuestLevel = true,
            collapseCompletedQuests = false,
            hideCompletedQuestObjectives = false,
            hideBlizzardCompletionText = false,
            hideCompletedAchieveObjectives = true,
            showBlizzardQuestTimer = false,
            trackerHeaderEnabled = true,
            currentHeaderEnabledSetting = true,
            autoMoveHeader = true,
            stickyDurabilityFrame = false,
            hideTrackerInCombat = false,
            hideTrackerInDungeons = true,
            trackerFadeMinMaxButtons = false,
            trackerFadeQuestItemButtons = false,
            trackerBackdropEnabled = false,
            currentBackdropEnabled = false,
            trackerBorderEnabled = false,
            currentBorderEnabled = false,
            trackerBackdropFader = false,
            currentBackdropFader = false,
            sizerHidden = false,
            listAchievementsFirst = false,
            stickyVoiceOverFrame = false,
            alwaysShowTracker = false,
            trackerColorObjectives = 'minimal',
            trackerSortObjectives = 'byZone',
            trackerbindSetTomTom = 'ctrlleft',
            trackerbindOpenQuestLog = 'left',
            trackerbindUntrack = "shiftleft",
            trackerSetpoint = "TOPLEFT",
            trackerFontSizeHeader = 12,
            trackerFontHeader = 'Friz Quadrata TT',
            trackerFontSizeZone = 12,
            trackerFontZone = 'Friz Quadrata TT',
            trackerFontSizeQuest = 10,
            trackerFontQuest = 'Friz Quadrata TT',
            trackerFontSizeObjective = 10,
            trackerFontObjective = 'Friz Quadrata TT',
            trackerQuestPadding = 4,
            trackerFontOutline = "None",
            trackerBackdropAlpha = 1,
            trackerHeightRatio = 0.50,

            lowLevelStyle = 1, -- Questie.LOWLEVEL_NONE
            manualLevelOffset = 7,
            minLevelFilter = 1,
            maxLevelFilter = 10,
            enabled = true,
            searchType = 1,
            autoaccept = false,
            autocomplete = false,
            autoModifier = "shift",
            acceptTrivial = false,
            questAnnounceChannel = "party",
            questAnnounceItems = true,
            questAnnounceAccepted = false,
            questAnnounceAbandoned = false,
            questAnnounceObjectives = true,
            questAnnounceCompleted = false,
            questAnnounceLocally = false,
            hideUnexploredMapIcons = false,
            hideUntrackedQuestsMapIcons = false,
            showRepeatableQuests = true,
            showEventQuests = true,
            showDungeonQuests = true,
            showRaidQuests = true,
            showPvPQuests = true,
            showAQWarEffortQuests = false,
            showQuestsInNpcTooltip = true,
            trackerEnabled = true,
            ldbDisplayText = "Questie",
            enableQuestFrameIcons = true,
            soundOnQuestComplete = false,
            questCompleteSoundChoiceName = "QuestDefault",
            soundOnObjectiveComplete = false,
            objectiveCompleteSoundChoiceName = "ObjectiveDefault",
            soundOnObjectiveProgress = false,
            objectiveProgressSoundChoiceName = "ObjectiveProgress",

            minimap = {
                hide = false
            },

            TrackerWidth = 0,
            TrackerHeight = 0,

            townsfolkConfig = {
                ["Repair"] = false,
                ["Innkeeper"] = true,
                ["Class Trainer"] = false,
                ["Banker"] = false,
                ["Spirit Healer"] = false,
                ["Flight Master"] = true,
                ["Battlemaster"] = false,
                ["Weapon Master"] = false,
                ["Mailbox"] = true,
                ["Auctioneer"] = false,
                ["Meeting Stones"] = true,
                ["Reagents"] = false,
            },

            -- Migration
            migrationVersion = 0,
            globalMigrationSteps = {},

            debugEnabled = false,
            debugEnabledPrint = false,
            debugLevel = 0,
            skipValidation = false,
        },
        char = {
            complete = {},
            hidden = {},
            hiddenDailies = {
                nhc = {},
                hc = {},
                cooking = {},
                fishing = {},
                pvp = {},
            },
            journey = {},
            isTrackerExpanded = true,
        },
        global = {
            -- TBC Isle of Quel'Danas
            isleOfQuelDanasPhase = 1,
            isIsleOfQuelDanasPhaseReminderDisabled = false,
            --
            lastDailyRequestResetTime = 0,
            lastDailyRequestDate = "",
            questieLocale = 'enUS',
            questieLocaleDiff = false,
        }
    }
end
