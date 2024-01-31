import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    var result = [Int]()
    this: for i in l...r {
        for j in Array(String(i)) {
            if j != "5" && j != "0" {
                continue this
            }
        }
        result.append(i)
    }
    return result.isEmpty ? [-1] : result
}