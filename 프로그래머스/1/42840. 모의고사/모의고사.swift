import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var supo1 = [1, 2, 3, 4, 5]
    var supo2 = [2, 1, 2, 3, 2, 4, 2, 5]
    var supo3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var supo = [supo1, supo2, supo3]
    var counts: [Int] = []

    for i in 0..<supo.count {
        var count = 0
        var k = 0
        for j in 0..<answers.count {
            if k >= supo[i].count {
                k = 0
            }
            if answers[j] == supo[i][k] {
                count += 1
            }
            k += 1
        }
        counts.append(count)
    }

    var maxValue = 0
    var result: [Int] = []
    for i in 0..<counts.count {
        if maxValue < counts[i] {
            maxValue = counts[i]
            result = []
            result.append(i + 1)
        } else if maxValue == counts[i] {
            result.append(i + 1)
        }
    }
    
    return result
}