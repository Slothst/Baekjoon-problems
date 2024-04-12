import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var stages = stages.sorted(by: <)
    var stageCount = stages.count
    var result: [Double] = []
    var n = 1
    while n <= N {
        var count = 0
        for i in stages {
            if i != n {
                break
            }
            count += 1
        }
        stages.removeFirst(count)
        result.append(Double(count) / Double(stageCount))
        stageCount -= count
        n += 1
    }

    return result.enumerated().sorted { $0.element > $1.element }.map { $0.offset + 1 }
}