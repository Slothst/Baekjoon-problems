import Foundation

func solution(_ n:Int) -> Int {
    var n = n
    var str = ""
    
    while n != 0 {
        str += String(n % 3)
        n /= 3
    }
    return Int((str), radix: 3)!
}