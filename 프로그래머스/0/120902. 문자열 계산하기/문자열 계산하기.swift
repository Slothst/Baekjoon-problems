import Foundation

func solution(_ my_string:String) -> Int {
    var me = my_string.components(separatedBy: .whitespaces)
    var numbers = [Int]()
    var `operator` = [String]()

    for i in 0..<me.count {
        if i % 2 == 0 {
            numbers.append(Int(me[i])!)
        } else {
            `operator`.append(me[i])
        }
    }
    var sum = 0
    if `operator`[0] == "+" {
        sum = numbers[0] + numbers[1]
    } else {
        sum = numbers[0] - numbers[1]
    }
    for i in 2..<numbers.count {
        if `operator`[i - 1] == "+" {
            sum += numbers[i]
        } else {
            sum -= numbers[i]
        }
    }
    return sum
}