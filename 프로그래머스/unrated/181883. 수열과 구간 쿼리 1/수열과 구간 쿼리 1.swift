import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    // var result = arr
    // for i in 0...queries.count - 1 {
    //     result[queries[i][0]...queries[i][1]] = ArraySlice(result[queries[i][0]...queries[i][1]].map { $0 + 1 })
    // }
    // return result
    var arr = arr
    queries.forEach { ($0[0]...$0[1]).forEach { arr[$0] += 1 }}
    return arr
}