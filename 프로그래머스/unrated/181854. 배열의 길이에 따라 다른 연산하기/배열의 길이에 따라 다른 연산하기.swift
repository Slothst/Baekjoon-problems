import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    // var result = arr
    // if arr.count % 2 == 1 {
    //     for i in arr.indices where i % 2 == 0 {
    //         result[i] += n
    //     }
    // } else {
    //     for i in arr.indices where i % 2 == 1 {
    //         result[i] += n
    //     }
    // }
    // return result
    
    return arr.indices.map { arr[$0] + ($0 % 2 == (arr.count % 2 == 0 ? 1 : 0) ? n : 0) }
}