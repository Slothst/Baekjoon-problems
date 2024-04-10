import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var score: [Int] = []
    
    for i in 0..<photo.count {
        var sum = 0
        for j in 0..<photo[i].count {
            if let idx = name.firstIndex(of: photo[i][j]) {
                sum += yearning[idx]
            }
        }
        score.append(sum)
    }
    
    return score
}