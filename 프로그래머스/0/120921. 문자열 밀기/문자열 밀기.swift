import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var arrA = Array(A)
    var arrB = Array(B)
    var count = 0

    for _ in 1...A.count {
        if arrA == arrB {
            break
        }
        arrA.insert(arrA.popLast() ?? "A", at: 0)
        count += 1
    }

    return count == A.count ? -1 : count
}