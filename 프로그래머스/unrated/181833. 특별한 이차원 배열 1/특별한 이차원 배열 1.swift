import Foundation

func solution(_ n:Int) -> [[Int]] {
    // var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
    // for i in 0..<n {
    //     for j in 0..<n {
    //         if i == j {
    //             arr[i][j] = 1
    //         }
    //     }
    // }
    // return arr
    
    return (0..<n).map { i in (0..<n).map { j in i == j ? 1 : 0 } }
}