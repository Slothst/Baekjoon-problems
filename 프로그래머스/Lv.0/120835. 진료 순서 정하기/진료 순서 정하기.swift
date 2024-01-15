import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var arr = emergency.enumerated().sorted {
        $0.element > $1.element
    }

    var result = [Int](repeating: 0, count: emergency.count)

    for i in 0..<arr.count {
        for j in 0..<arr.count {
            if arr[i].element == emergency[j] {
                result[j] = i + 1
            }
        }
    }
    return result
}