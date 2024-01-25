import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    for word in dic {
        var count = 0
        spell.forEach { alp in
            if word.contains(alp) {
                count += 1
            }
        }
        if count == spell.count {
            return 1
        }
    }
    return 2
}