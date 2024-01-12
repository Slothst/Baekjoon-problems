import Foundation

func solution(_ n:Int) -> Int {
    var count = 0
    var n = n
    while n >= 1 {
        count += 1
        n /= count
    }
    return count - 1
}