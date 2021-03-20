local questStateLocales = {
    ["Complete"] = {
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Abgeschlossen",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = false,
        ["esES"] = false,
        ["frFR"] = false,
    },
    ["Failed"] = {
        ["ptBR"] = "Fracassado",
        ["ruRU"] = "Провалено",
        ["deDE"] = "Fehlgeschlagen",
        ["koKR"] = false,
        ["esMX"] = "Fracasado",
        ["enUS"] = true,
        ["zhCN"] = "失败",
        ["zhTW"] = false,
        ["esES"] = "Fracasado",
        ["frFR"] = "Échoué",
    },
    ["Available"] = {
        ["ptBR"] = "Disponivel",
        ["ruRU"] = "Доступно",
        ["deDE"] = "Verfügbar",
        ["koKR"] = "수행가능",
        ["esMX"] = "Disponible",
        ["enUS"] = true,
        ["zhCN"] = "可接",
        ["zhTW"] = "可接",
        ["esES"] = "Disponible",
        ["frFR"] = "Disponible",
    },
    ["Active"] = {
        ["ptBR"] = "Ativo",
        ["ruRU"] = "Активно",
        ["deDE"] = "Aktiv",
        ["koKR"] = "활성화",
        ["esMX"] = "Activa",
        ["enUS"] = true,
        ["zhCN"] = "已有",
        ["zhTW"] = "已有",
        ["esES"] = "Activa",
        ["frFR"] = false,
    },
    ["Event"] = {
        ["ptBR"] = "Evento",
        ["ruRU"] = "Игровое событие",
        ["deDE"] = false,
        ["koKR"] = "이벤트",
        ["esMX"] = "Evento",
        ["enUS"] = true,
        ["zhCN"] = "事件",
        ["zhTW"] = "事件",
        ["esES"] = "Evento",
        ["frFR"] = "Évènement",
    },
    ["Repeatable"] = {
        ["ptBR"] = "Repetivel",
        ["ruRU"] = "Повторяемое",
        ["deDE"] = "Wiederholbar",
        ["koKR"] = "반복가능",
        ["esMX"] = "Repetible",
        ["enUS"] = true,
        ["zhCN"] = "可重复",
        ["zhTW"] = "可重複",
        ["esES"] = "Repetible",
        ["frFR"] = "Répétable",
    },
}

for k, v in pairs(questStateLocales) do
    l10n.translations[k] = v
end