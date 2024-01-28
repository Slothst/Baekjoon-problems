import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    var list:[Double] = score.map{ Double($0[0]+$0[1])/Double(2) }
    var sorted:[Double] = list.sorted(by: >)
    return list.map {
        (sorted.firstIndex(of:$0) ?? 0)+1
    }
}