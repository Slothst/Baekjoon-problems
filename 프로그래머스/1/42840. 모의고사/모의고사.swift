import Foundation

func solution(_ answers:[Int]) -> [Int] {
//     var supo1 = [1, 2, 3, 4, 5]
//     var supo2 = [2, 1, 2, 3, 2, 4, 2, 5]
//     var supo3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
//     var supo = [supo1, supo2, supo3]
//     var counts: [Int] = []

//     for i in 0..<supo.count {
//         var count = 0
//         var k = 0
//         for j in 0..<answers.count {
//             if k >= supo[i].count {
//                 k = 0
//             }
//             if answers[j] == supo[i][k] {
//                 count += 1
//             }
//             k += 1
//         }
//         counts.append(count)
//     }

//     var maxValue = 0
//     var result: [Int] = []
//     for i in 0..<counts.count {
//         if maxValue < counts[i] {
//             maxValue = counts[i]
//             result = []
//             result.append(i + 1)
//         } else if maxValue == counts[i] {
//             result.append(i + 1)
//         }
//     }
    
//     return result
    
    let answer = (
        a : [1, 2, 3, 4, 5],
        b : [2, 1, 2, 3, 2, 4, 2, 5],
        c : [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    )
    var point = [1:0, 2:0, 3:0]
    
    for (i, v) in answers.enumerated() {
        if v == answer.a[i % 5] { point[1] = point[1]! + 1 }
        if v == answer.b[i % 8] { point[2] = point[2]! + 1 }
        if v == answer.c[i % 10] { point[3] = point[3]! + 1 }
    }
    
    return point.sorted { $0.key < $1.key }.filter { $0.value == point.values.max() }.map { $0.key }
}