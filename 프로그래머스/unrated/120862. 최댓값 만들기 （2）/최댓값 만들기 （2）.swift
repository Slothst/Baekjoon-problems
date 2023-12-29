import Foundation

func solution(_ numbers:[Int]) -> Int {
    var max = Int.min
    for i in 0..<numbers.count - 1 {
        for j in i+1..<numbers.count {
            if numbers[i] * numbers[j] > max {
                max = numbers[i] * numbers[j]
            }
        }
    }
    return max
}