import Foundation

func solution(_ arr:[Int]) -> Int {
    var arr = arr
    var temp = [Int]()
    var count = 0
    while true {
        if temp == arr {
            break
        }
        temp = arr
        arr = arr.map { $0 >= 50 && $0 % 2 == 0 ? $0 / 2 : $0 < 50 &&  $0 % 2 == 1 ? $0 * 2 + 1 : $0 }
        count += 1
    }
    return count - 1
}