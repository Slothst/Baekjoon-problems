import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    var answer = [Int]()
    for i in 0..<intervals.count {
        arr[intervals[i][0]...intervals[i][1]].map { answer.append(Int(exactly: $0)!) }
    }
    return answer
} 