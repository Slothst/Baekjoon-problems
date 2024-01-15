import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    var pow = 1

    while pow < arr.count {
        pow *= 2
    }

    for _ in 0..<pow - arr.count {
        arr.append(0)
    }
    return arr
}