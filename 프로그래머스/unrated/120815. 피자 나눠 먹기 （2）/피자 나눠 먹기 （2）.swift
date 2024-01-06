import Foundation

func solution(_ n:Int) -> Int {
    var result = 1
    var pizza = 6
    while true {
        if pizza % n == 0 {
            return result
        }
        pizza += 6
        result += 1
    }
}