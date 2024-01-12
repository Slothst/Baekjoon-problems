import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var count = 0

    for i in (1...myString.count).reversed() {
        if myString.prefix(i).suffix(pat.count).contains(pat) {
            count += 1
        }
    } 
    return count
}