import Foundation

func solution(_ num_list:[Int]) -> Int {
    var evenSum = num_list.filter { $0 % 2 == 1 }.map { String($0) }.joined()
    var oddSum = num_list.filter { $0 % 2 == 0 }.map { String($0) }.joined()

    return Int(evenSum)! + Int(oddSum)!
}