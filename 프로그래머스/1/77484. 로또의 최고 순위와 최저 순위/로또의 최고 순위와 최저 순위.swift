import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
//     var lottos = lottos
//     var count = 0
//     var minimum = 0
//     var maximum = 0
//     var result: [Int] = []

//     func getCounts(_ lottos: [Int], _ win_nums: [Int]) -> Int {
//         var count = 0
//         for num in win_nums {
//             if lottos.contains(num) {
//                 count += 1
//             }
//         }
//         return count
//     }

//     func getRank(_ count: Int) {
//         if count == 6 {
//             result.append(1)
//         } else if count == 5 {
//             result.append(2)
//         } else if count == 4 {
//             result.append(3)
//         } else if count == 3 {
//             result.append(4)
//         } else if count == 2 {
//             result.append(5)
//         } else {
//             result.append(6)
//         }
//     }

//     minimum = getCounts(lottos, win_nums)

//     for i in 0..<lottos.count {
//         if lottos[i] == 0 {
//             for num in win_nums {
//                 if !lottos.contains(num) {
//                     lottos[i] = num
//                     break
//                 }
//             }
//         }
//     }

//     maximum = getCounts(lottos, win_nums)

//     getRank(maximum)
//     getRank(minimum)

//     return result
    
    var zeroCount = lottos.filter { $0 == 0 }.count
    var winCount = lottos.filter { win_nums.contains($0) }.count
    
    return [min(7 - zeroCount - winCount, 6), min(7 - winCount, 6)]
}