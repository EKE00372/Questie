local keyboardShortcutLocales = {
    ["Right Click"] = {
        ["ptBR"] = "Clique Direito",
        ["ruRU"] = "ПКМ",
        ["deDE"] = "Rechtsklick",
        ["koKR"] = "오른쪽 클릭",
        ["esMX"] = "Clic der.",
        ["enUS"] = true,
        ["zhCN"] = "右键",
        ["zhTW"] = "右鍵",
        ["esES"] = "Clic der.",
        ["frFR"] = "Clic Droit ",
    },
    ["Left Click"] = {
        ["ptBR"] = "Clique Esquerda",
        ["ruRU"] = "ЛКМ",
        ["deDE"] = "Linksklick",
        ["koKR"] = "왼쪽 클릭",
        ["esMX"] = "Clic izq.",
        ["enUS"] = true,
        ["zhCN"] = "左键",
        ["zhTW"] = "左鍵",
        ["esES"] = "Clic izq.",
        ["frFR"] = "Clic Gauche ",
    },
    ["Alt"] = {
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = false,
        ["esES"] = false,
        ["frFR"] = false,
    },
    ["Control"] = {
        ["ptBR"] = "Ctrl",
        ["ruRU"] = "Ctrl",
        ["deDE"] = "Strg",
        ["koKR"] = "제어",
        ["esMX"] = false,
        ["enUS"] = true,
        ["zhCN"] = "Ctrl",
        ["zhTW"] = "Ctrl",
        ["esES"] = false,
        ["frFR"] = "Ctrl",
    },
    ["Ctrl + Left Click"] = {
        ["ptBR"] = "Ctrl + Clique Esquerdo",
        ["ruRU"] = "Ctrl + ЛКМ",
        ["deDE"] = "Strg + Linksklick",
        ["koKR"] = "Ctrl + 왼쪽 클릭",
        ["esMX"] = "Ctrl + Clic izq.",
        ["enUS"] = true,
        ["zhCN"] = "Ctrl + 左键",
        ["zhTW"] = "Ctrl + 左鍵點擊",
        ["esES"] = "Ctrl + Clic izq.",
        ["frFR"] = "Ctrl + Clic Gauche ",
    },
    ["Ctrl + Right Click"] = {
        ["ptBR"] = "Ctrl + Clique Direito",
        ["ruRU"] = "Ctrl + ПКМ",
        ["deDE"] = "Strg + Rechtsklick",
        ["koKR"] = "Ctrl + 오른쪽 클릭",
        ["esMX"] = "Ctrl + Clic der.",
        ["enUS"] = true,
        ["zhCN"] = "Ctrl + 右键",
        ["zhTW"] = "Ctrl + 右鍵點擊",
        ["esES"] = "Ctrl + Clic der.",
        ["frFR"] = "Ctrl + Clic Droit ",
    },
    ["Ctrl + Left Click + Hold"] = {
        ["ptBR"] = "Ctrl + Clique esquerdo + Manter pressionado",
        ["ruRU"] = "Зажать Ctrl + ЛКМ",
        ["deDE"] = "Strg + Linksklick + Halten",
        ["koKR"] = "Ctrl + 왼쪽 클릭 + 보류",
        ["esMX"] = "Ctrl + Clic izquierdo + Mantener",
        ["enUS"] = true,
        ["zhCN"] = "Ctrl +左键+保持",
        ["zhTW"] = "Ctrl + 長按左鍵",
        ["esES"] = "Ctrl + Clic izquierdo + Mantener",
        ["frFR"] = "Ctrl + clic gauche + maintien",
    },
    ["Ctrl + Shift + Left Click"] = {
        ["ptBR"] = "Ctrl + Shift + Clique Esquerdo",
        ["ruRU"] = "Ctrl + Shift + ЛКМ",
        ["deDE"] = "Strg + Shift + Linksklick",
        ["koKR"] = "Ctrl + Shift + 왼쪽 클릭",
        ["esMX"] = "Ctrl + Shift + Clic izq.",
        ["enUS"] = true,
        ["zhCN"] = "Ctrl + Shift + 左键",
        ["zhTW"] = "Ctrl + Shift + 左鍵點擊",
        ["esES"] = "Ctrl + Shift + Clic izq.",
        ["frFR"] = "Ctrl + Maj + Clic Gauche ",
    },
    ["Shift"] = {
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Umschalt",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = false,
        ["esES"] = false,
        ["frFR"] = "Maj",
    },
    ["Hold Shift"] = {
        ["ptBR"] = "Pressione Shift",
        ["ruRU"] = "Зажмите Shift",
        ["deDE"] = "Shift halten",
        ["koKR"] = "Shift: 자세히",
        ["esMX"] = "Presiona Shift",
        ["enUS"] = true,
        ["zhCN"] = "按住Shift查看更多",
        ["zhTW"] = "按住Shift",
        ["esES"] = "Presiona Shift",
        ["frFR"] = "Maintenir Maj",
    },
    ["Left Click + Hold"] = {
        ["ptBR"] = "Clique esquerdo + espera",
        ["ruRU"] = "Зажать ЛКМ",
        ["deDE"] = "Linksklick + Halten",
        ["koKR"] = "왼쪽 클릭 + 보류",
        ["esMX"] = "Clic izquierdo + Mantener",
        ["enUS"] = true,
        ["zhCN"] = "左键单击并按住",
        ["zhTW"] = "左鍵單擊並按住",
        ["esES"] = "Clic izquierdo + Mantener",
        ["frFR"] = "Clic gauche + Maintenir",
    },
}

for k, v in pairs(keyboardShortcutLocales) do
    i10n.translations[k] = v
end