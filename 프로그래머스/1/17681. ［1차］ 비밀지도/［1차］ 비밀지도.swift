func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
//     func makeMap(_ arr: [Int], _ n: Int) -> [[String]] {
//         var map = Array(repeating: Array(repeating: " ", count: n), count: n)

//         var convertArr = arr.map { String(format: "%0\(n)ld", Int(String($0, radix: 2))!) }
//         for i in 0..<n {
//             for j in 0..<n {
//                 if Array(convertArr[i])[j] == "1" {
//                     map[i][j] = "#"
//                 }
//             }
//         }

//         return map
//     }

//     func result(_ map1: [[String]], _ map2: [[String]]) -> [String] {
//         var map = Array(repeating: Array(repeating: " ", count: map1.count), count: map1.count)

//         for i in 0..<n {
//             for j in 0..<n {
//                 if map1[i][j] == "#" || map2[i][j] == "#" {
//                     map[i][j] = "#"
//                 }
//             }
//         }

//         return map.map { $0.joined() }
//     }

//     return result(makeMap(arr1, n), makeMap(arr2, n))
    return (0..<n).map {
        let binary = String(arr1[$0] | arr2[$0], radix: 2)
        let padded = String(repeating: "0", count: n - binary.count) + binary
        return padded.reduce("") { $0 + ($1 == "0" ? " " : "#") }
    }
}