import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var sum = 0
    for i in 0..<absolutes.count {
        if !signs[i] {
            sum += absolutes[i] * -1
        } else {
            sum += absolutes[i]
        }
    }
    return sum
}