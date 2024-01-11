import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    var startIndex = intStrs[0].index(intStrs[0].startIndex, offsetBy: s)
    var endIndex = intStrs[0].index(intStrs[0].startIndex, offsetBy: s + l - 1)
    return intStrs.map { Int($0[startIndex...endIndex])! }.filter { $0 > k }
}