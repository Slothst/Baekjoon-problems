import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var result = Array(repeating: -1, count: k)
    var count = 0

    for i in 0..<arr.count {
        if count == k {
            break
        }
        if !result.contains(arr[i]) {
            result[count] = arr[i]
            count += 1
        }
    }
    return result
}