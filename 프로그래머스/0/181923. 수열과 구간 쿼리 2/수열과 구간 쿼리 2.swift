import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    return queries.map { i in arr[i[0]...i[1]].filter { j in i[2] < j }.min() ?? -1 }
}