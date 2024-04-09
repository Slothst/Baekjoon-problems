import Foundation

func solution(_ food:[Int]) -> String {
    var str: [String] = []

    for i in 1..<food.count {
        var n = food[i]
        if food[i] % 2 == 1 {
            n = food[i] - 1
        }
        for j in 0..<n/2 {
            str.append(String(i))
        }
    }
    str.append("0")

    for i in (1..<food.count).reversed() {
        var n = food[i]
        if food[i] % 2 == 1 {
            n = food[i] - 1
        }
        for j in 0..<n/2 {
            str.append(String(i))
        }
    }

    return str.joined()
}