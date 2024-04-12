import Foundation

func solution(_ babbling:[String]) -> Int {
    var words: [String: String] = [
        "a": "aya",
        "y": "ye",
        "w": "woo",
        "m": "ma"
    ]
    var answer = 0

    for s in babbling {
        var prev = ""
        var i = 0
        while i < s.count {
            if prev == String(Array(s)[i]) { break }
            var word = words[String(Array(s)[i])] ?? ""
            if word.isEmpty { break }
            var curStr = String(Array(s)[i...min(s.count, i + word.count) - 1])

            if curStr == word {
                prev = String(Array(s)[i])
                i += word.count
            } else { break }
        }
        if i == s.count { answer += 1 }
    }
    return answer
}