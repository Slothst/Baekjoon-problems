import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    var N = n
    for item in Array(control) {
        switch item {
        case "w": N += 1
        case "s": N -= 1
        case "d": N += 10
        case "a": N -= 10
        default: N += 0
        }    
    }
    return N
}