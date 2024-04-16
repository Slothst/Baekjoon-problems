import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var result: [Int] = []

    var xDic: [Int: Int] = [0: 0, 1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0, 7: 0, 8: 0, 9: 0]
    var yDic: [Int: Int] = [0: 0, 1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0, 7: 0, 8: 0, 9: 0]

    X.map { xDic[Int(String($0))!]! += 1 }
    Y.map { yDic[Int(String($0))!]! += 1 }

    for i in 0...9 {
        if xDic[i] == 0 || yDic[i] == 0 {
            continue
        }

        if xDic[i] == yDic[i] {
            for _ in 0..<xDic[i]! {
                result.append(i)
            }
        } else {
            for _ in 0..<min(xDic[i]!, yDic[i]!) {
                result.append(i)
            }
        }
    }

    if result.isEmpty {
        return "-1"
    } else if result.filter ({ $0 == 0 }).count == result.count {
        return "0"
    } else {
        return result.sorted(by: >).map { String($0) }.joined()
    }
}