import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    var result = [Int]()
    for i in attendance.enumerated() {
        if i.element {
            result.append(rank[i.offset])
        }
    }
    result = Array(result.sorted().prefix(3)).map { rank.firstIndex(of: $0) ?? 0 }
    return (10000 * result[0]) + (100 * result[1]) + result[2]
    
}