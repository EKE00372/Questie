---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

local tooltipOptionsLocales = {
    ["Tooltips"] = {
        ["ptBR"] = "Dicas de ferramentas (informaçâo)",
        ["ruRU"] = "Подсказки",
        ["deDE"] = "Tooltip",
        ["koKR"] = "툴팁",
        ["esMX"] = "Descripción emergente",
        ["enUS"] = true,
        ["zhCN"] = "工具提示",
        ["zhTW"] = "工具提示",
        ["esES"] = "Descripción emergente",
        ["frFR"] = "Info-bulle",
    },
    ["Tooltip options"] = {
        ["ptBR"] = "Opções de dica de ferramenta",
        ["ruRU"] = "Настройки всплывающих подсказок",
        ["deDE"] = "Tooltip-Optionen",
        ["koKR"] = "툴팁 옵션",
        ["esMX"] = "Opciones de descripción emergente",
        ["enUS"] = true,
        ["zhCN"] = "工具提示选项",
        ["zhTW"] = "工具提示選項",
        ["esES"] = "Opciones de descripción emergente",
        ["frFR"] = "Options des l'info-bulles",
    },
    ["Enable Tooltips"] = {
        ["ptBR"] = "Ativar dicas de ferramentas (informaçâo)",
        ["ruRU"] = "Отображение в подсказках",
        ["deDE"] = "Tooltips aktivieren",
        ["koKR"] = "툴팁 활성화",
        ["esMX"] = "Habilitar descripción emergente",
        ["enUS"] = true,
        ["zhCN"] = "启用鼠标提示",
        ["zhTW"] = "提示訊息",
        ["esES"] = "Habilitar descripción emergente",
        ["frFR"] = "Activer les info-bulles",
    },
    ["When this is enabled, quest info will be added to relevant mob/item tooltips."] = {
        ["ptBR"] = "Se ativada, as informações da missão serão adicionadas às dicas relevantes de mob / item",
        ["ruRU"] = "Показать/скрыть информацию о заданиях в соответствующих всплывающих подсказках",
        ["deDE"] = "Aktiviert/Deaktiviert zusätzliche Informationen zu Gegnern und Gegenständen als Tooltip.",
        ["koKR"] = "몬스터와 아이템의 툴팁에 관련된 퀘스트 정보를 표시합니다.",
        ["esMX"] = "Cuando está habilitado la información de la mision aparecera en la descripcion de los monstruos/objetos relevantes",
        ["enUS"] = true,
        ["zhCN"] = "启用后，在目标或物品的鼠标提示中显示任务信息",
        ["zhTW"] = "在目標或物品的滑鼠提示顯示任務資訊",
        ["esES"] = "Cuando está habilitado la información de la mision aparecera en la descripcion de los monstruos/objetos relevantes",
        ["frFR"] = "Active l'affichage des informations de quête dans les info-bulles des monstres et des objets.",
    },
    ["Show Quest Level in Tooltips"] = {
        ["ptBR"] = "Mostrar o nível da missão nas dicas de ferramentas",
        ["ruRU"] = "Уровень заданий в подсказках",
        ["deDE"] = "Questlevel in Tooltips aktivieren",
        ["koKR"] = "툴팁에 퀘스트 레벨 표시",
        ["esMX"] = "Mostrar nivel de misión en tooltips",
        ["enUS"] = true,
        ["zhCN"] = "显示任务等级",
        ["zhTW"] = "在提示訊息顯示任務等級",
        ["esES"] = "Mostrar nivel de misión en tooltips",
        ["frFR"] = "Niveau des quêtes dans les info-bulles",
    },
    ["When this is checked, the level of quests will show in the tooltips."] = {
        ["ptBR"] = "Quando esta opção está marcada, o nível das missões será mostrado nas dicas de ferramentas.",
        ["ruRU"] = "Показать/скрыть уровень заданий во всплывающих подсказках",
        ["deDE"] = "Aktiviert/Deaktiviert, ob das Questlevel in den Tooltips angezeigt wird.",
        ["koKR"] = "툴팁에 퀘스트의 레벨을 표시합니다.",
        ["esMX"] = "Si está marcado, el nivel de misiones mostrará en los tooltips.",
        ["enUS"] = true,
        ["zhCN"] = "启用后，任务等级将显示在鼠标提示中",
        ["zhTW"] = "將任務的等級將示在提示訊息上",
        ["esES"] = "Si está marcado, el nivel de misiones mostrará en los tooltips.",
        ["frFR"] = "Active l'affichage du niveau des quêtes dans les info-bulles.",
    },
    ["Only show party members"] = {
        ["ptBR"] = "Somente parte compartilhada",
        ["ruRU"] = "Только от игроков группы",
        ["deDE"] = "Party nur geteilt",
        ["koKR"] = "파티만 공유",
        ["esMX"] = "Fiesta compartida solo",
        ["enUS"] = true,
        ["zhCN"] = "仅限队伍",
        ["zhTW"] = "僅限聚會",
        ["esES"] = "Fiesta compartida solo",
        ["frFR"] = "Partage avec le groupe uniquement",
    },
    ["When this is enabled, shared quest info will only show players in your party."] = {
        ["ptBR"] = "Quando isso estiver ativado, as informações compartilhadas das missões serão mostradas apenas se forem de membros da equipe.",
        ["ruRU"] = "Когда включено, информация о таком же, как у вас, задании будет отображаться только от членов группы",
        ["deDE"] = "Wenn dies aktiviert ist, werden freigegebene Questinformationen nur angezeigt, wenn sie von Gruppenmitgliedern stammen.",
        ["koKR"] = "이 기능을 활성화하면 공유 퀘스트 정보가 파티원의 정보 인 경우에만 표시됩니다.",
        ["esMX"] = "Cuando esto está habilitado, la información de misiones compartidas solo se mostrará si son de miembros del grupo.",
        ["enUS"] = true,
        ["zhCN"] = "启用后，仅当共享任务信息来自队伍其他成员时才会显示。",
        ["zhTW"] = "啟用此功能後，僅當共享任務信息來自聚會成員時才會顯示。",
        ["esES"] = "Cuando esto está habilitado, la información de misiones compartidas solo se mostrará si son de miembros del grupo.",
        ["frFR"] = "Limite le partage des progressions avec les membres du groupe uniquement.",
    },
    ["Show quests in NPC tooltips"] = {
        ["ptBR"] = "Mostrar missões nas dicas do PNJ",
        ["ruRU"] = "Задания в подсказках NPC",
        ["deDE"] = "Quests in NPC Tooltips anzeigen",
        ["koKR"] = "NPC 툴팁에 퀘스트 표시",
        ["esMX"] = "Mostrar misiones en el tooltip del PNJ",
        ["enUS"] = true,
        ["zhCN"] = "显示任务 NPC",
        ["zhTW"] = "顯示任務 NPC",
        ["esES"] = "Mostrar misiones en el tooltip del PNJ",
        ["frFR"] = "Afficher les quêtes dans les info-bulles des PNJ",
    },
    ["Show quests (available/complete) in the NPC tooltips."] = {
        ["ptBR"] = "Mostra missões (disponíveis/concluídas) nas dicas de ferramentas do PNJ.",
        ["ruRU"] = "Показать/скрыть задания (доступные/выполненные) во всплывающих подсказках NPC",
        ["deDE"] = "Zeigt Quests (verfügbar/abgeschlossen) in den NPC Tooltips.",
        ["koKR"] = "NPC 툴팁에 (가능한/완료한) 퀘스트표시",
        ["esMX"] = "Muestra misiones (disponibles/completadas) en el tooltip del PNJ.",
        ["enUS"] = true,
        ["zhCN"] = "启用后，在鼠标提示中显示NPC（可接/完成）任务。",
        ["zhTW"] = "在 NPC 提示中顯示（可接/完成）任務",
        ["esES"] = "Muestra misiones (disponibles/completadas) en el tooltip del PNJ.",
        ["frFR"] = "Affiche les quêtes (disponibles / terminées) dans les info-bulles des PNJ.",
    },
    ["Show quest XP at max level"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Опыт на макс. уровне",
        ["deDE"] = "Zeige XP auf Max-Level",
        ["koKR"] = false,
        ["esMX"] = "Mostrar EXP de misión en el nivel máximo",
        ["enUS"] = true,
        ["zhCN"] = "显示高等级的任务经验值",
        ["zhTW"] = false,
        ["esES"] = "Mostrar EXP de misión en el nivel máximo",
        ["frFR"] = "Voir l'expérience des quêtes au niveau maximum",
    },
    ["Shows the quest XP values on quests even at max level."] = {
        ["ptBR"] = false,
        ["ruRU"] = "Показывать опыт за задания даже на максимальном уровне персонажа",
        ["deDE"] = "Zeigt die Quest XP auch auf Max-Level an.",
        ["koKR"] = false,
        ["esMX"] = "Muestra los valores de EXP de misiones incluso en el nivel máximo.",
        ["enUS"] = true,
        ["zhCN"] = "即使在最高等级,任务也会显示任务经验值。",
        ["zhTW"] = false,
        ["esES"] = "Muestra los valores de EXP de misiones incluso en el nivel máximo.",
        ["frFR"] = "Montrer le montant d'expérience des quêtes, même au niveau maximum.",
    },
}

for k, v in pairs(tooltipOptionsLocales) do
    l10n.translations[k] = v
end
