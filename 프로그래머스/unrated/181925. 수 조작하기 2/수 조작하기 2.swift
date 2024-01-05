import Foundation

func solution(_ numLog:[Int]) -> String {
    var arr = [String]()
    var num = numLog[0]
    for i in 1..<numLog.count {
        switch numLog[i] - num {
        case 1: arr.append("w")
        case -1: arr.append("s")
        case 10: arr.append("d")
        default: arr.append("a")
        }
        num = numLog[i]
    }
    return arr.joined()
}