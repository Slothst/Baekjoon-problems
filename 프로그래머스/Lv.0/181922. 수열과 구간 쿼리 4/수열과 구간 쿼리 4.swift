import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var arr = arr
//     var result = [Int]()
    
//     for query in queries {
//         arr[query[0]...query[1]].indices.filter { $0 % query[2] == 0 }.map { result.append(Int($0)) }
//         for i in result {
//             arr[i] += 1
//         }
//         result.removeAll()
//     }
    queries.forEach {
        let (s, e, k) = ($0[0], $0[1], $0[2])
        (s...e).forEach { if $0 % k == 0 { arr[$0] += 1 } }
    }
    return arr
}