import Foundation

func solution(_ n:Int64) -> Int64 {
    var num = sqrt(Double(n))
    if num - num.rounded() == 0 {
        return Int64((num + 1) * (num + 1))
    }
    return -1
}