import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var count = Array(repeating: 0, count: number + 1)
    for i in 1...number {
        for j in 1...(number / i) {
            count[i * j] += 1
        }
    }
    return count.map { $0 > limit ? power : $0 }.reduce(0, +)
}