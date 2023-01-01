# 大文字が連続する際にそれぞれを独立した単語として扱う最大数
UPPER_MAX = 3
# 読み下しが必要な大文字列
UPPER_IGNORE = (
    "FAX",
    "ON",
    "OFF",
    "WEB",
    "LAN",
    "WAN",
    "GET",
    "PUT",
    "BES",
    "OF",
    "RAM",
    "ROM",
    "COM",
    "DOS",
    "JIS",
    "END",
    "THE",
    "IN",
    "OUT",
    "NEW",
    "ZIP",
    "TEL",
    "NEO",
    "POP",
)
# ローマ字読みを試みる最小文字数
ROMAN_MIN = 3
# ローマ字読みで、連続しても促音として変換しない文字
SOKUON_IGNORE = (
    "A",
    "I",
    "U",
    "E",
    "O",
    "N",
)
# 全角アルファベットを半角に変換するテーブル
ZENHAN_TABLE = {
    "ａ": "a",
    "ｂ": "b",
    "ｃ": "c",
    "ｄ": "d",
    "ｅ": "e",
    "ｆ": "f",
    "ｇ": "g",
    "ｈ": "h",
    "ｉ": "i",
    "ｊ": "j",
    "ｋ": "k",
    "ｌ": "l",
    "ｍ": "m",
    "ｎ": "n",
    "ｏ": "o",
    "ｐ": "p",
    "ｑ": "q",
    "ｒ": "r",
    "ｓ": "s",
    "ｔ": "t",
    "ｕ": "u",
    "ｖ": "v",
    "ｗ": "w",
    "ｘ": "x",
    "ｙ": "y",
    "ｚ": "z",
    "Ａ": "A",
    "Ｂ": "B",
    "Ｃ": "C",
    "Ｄ": "D",
    "Ｅ": "E",
    "Ｆ": "F",
    "Ｇ": "G",
    "Ｈ": "H",
    "Ｉ": "I",
    "Ｊ": "J",
    "Ｋ": "K",
    "Ｌ": "L",
    "Ｍ": "M",
    "Ｎ": "N",
    "Ｏ": "O",
    "Ｐ": "P",
    "Ｑ": "Q",
    "Ｒ": "R",
    "Ｓ": "S",
    "Ｔ": "T",
    "Ｕ": "U",
    "Ｖ": "V",
    "Ｗ": "W",
    "Ｘ": "X",
    "Ｙ": "Y",
    "Ｚ": "Z",
}
