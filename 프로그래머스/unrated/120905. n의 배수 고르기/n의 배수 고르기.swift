import Foundation

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    return Array(numlist.filter { $0 % n == 0 })
}