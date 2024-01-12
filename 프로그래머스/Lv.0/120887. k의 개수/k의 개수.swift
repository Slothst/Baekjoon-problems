import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var count = 0

    for n in i...j where String(n).contains(String(k)) {
        var arr = Array(String(n))
        for el in arr where el == Character(String(k)) {
            count += 1
        }
    }
    return count
}