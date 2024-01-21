import Foundation

func solution(_ sides:[Int]) -> Int {
    var maxVal = max(sides[0], sides[1])
    var minVal = min(sides[0], sides[1])

    var count = 0

    count += (maxVal-minVal+1...maxVal).count
    count += (maxVal+1..<minVal+maxVal).count
    return count
}