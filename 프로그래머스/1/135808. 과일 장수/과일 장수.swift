import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var score = score.sorted(by: >)

    var sum = 0
    stride(from: m - 1, to: score.count, by: m).map { sum += score[$0] * m }
    return sum
}