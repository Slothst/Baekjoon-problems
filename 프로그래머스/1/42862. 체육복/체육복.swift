import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var lost = lost.sorted(by: <)
    var reserve = reserve.sorted(by: <)
    var dup = lost.filter { reserve.contains($0) }

    for d in dup {
        lost.remove(at: lost.firstIndex(of: d)!)
        reserve.remove(at: reserve.firstIndex(of: d)!)
    }

    var count = n - lost.count

    for num in lost {
        if reserve.isEmpty {
            break
        }

        if let idx = reserve.firstIndex(of: num - 1) {
            count += 1
            reserve.remove(at: idx)
        } else if let idx = reserve.firstIndex(of: num + 1) {
            count += 1
            reserve.remove(at: idx)
        }
    }
    
    return count
}