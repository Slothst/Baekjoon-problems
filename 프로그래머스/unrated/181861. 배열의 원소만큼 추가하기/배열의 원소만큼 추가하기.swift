import Foundation

func solution(_ arr:[Int]) -> [Int] {
    // var answer = [Int]()
    // arr.map {
    //     for _ in 0..<$0 {
    //         answer.append($0)
    //     }
    // }
    // return answer
    return arr.flatMap { Array(repeating: $0, count: $0) }
}