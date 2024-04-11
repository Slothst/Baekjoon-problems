import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var score = score.sorted(by: >)

    return stride(from: m - 1, to: score.count, by: m).map { score[$0] * m }.reduce(0, +)
}