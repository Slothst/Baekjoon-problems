import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    var arr = arr
    var count = arr.count - arr[0].count

    if count > 0 {
        for i in 0..<arr.count {
            for _ in 0..<count {
                arr[i].append(0)    
            }
        }
    } else if count < 0 {
        for i in 0..<abs(count) {
            arr.append(Array(repeating: 0, count: arr[0].count))
        }
    } else {
        return arr
    }
    
    return arr
}