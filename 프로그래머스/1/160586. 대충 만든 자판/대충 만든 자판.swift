import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var count = 0
    var result: [Int] = []
    var isContains: [Bool] = []

    targets.map { target in
        target.map { tar in
            count += keymap.map { key in
                if let firstIndex = key.firstIndex(of: tar) {
                    isContains.append(true)
                    return key.distance(from: key.startIndex, to: firstIndex) + 1
                }
                isContains.append(false)
                return 101
            }.min() ?? 0
            if isContains.filter ({ $0 }).count == 0 {
                count = -101
            }
            isContains.removeAll()
        }
        if count < 0 {
            result.append(-1)
        } else {
            result.append(count)
        }
        count = 0
    }
    return result
}