import Foundation

func solution(_ letter:String) -> String {
    let morse: [String: Character] = [
    ".-": "a", "-...": "b", "-.-.": "c", "-..": "d", ".": "e", "..-.": "f",
    "--.": "g", "....": "h", "..": "i", ".---": "j", "-.-": "k", ".-..": "l",
    "--": "m", "-.": "n", "---": "o", ".--.": "p", "--.-": "q", ".-.": "r",
    "...": "s", "-": "t", "..-": "u", "...-": "v", ".--": "w", "-..-": "x",
    "-.--": "y", "--..": "z"
    ]
    var letter = letter.components(separatedBy: " ")
    var result = [Character]()
    for el in letter {
        result.append(morse[el] ?? " ")
    }

    return String(result)
}