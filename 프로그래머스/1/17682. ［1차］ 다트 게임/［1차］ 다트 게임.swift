func solution(_ dartResult:String) -> Int {
    var dartResult = Array(dartResult)
    var sum: [Int] = Array(repeating: 0, count: 3)
    var num = 0
    var j = 0

    for i in 0..<dartResult.count {
        if dartResult[i].isNumber {
            if dartResult[i + 1].isNumber {
                num = 10
            } else {
                if i > 0 && dartResult[i - 1].isNumber {
                    continue
                }
                num = Int(String(dartResult[i]))!
            }
        } else if dartResult[i].isLetter {
            if dartResult[i] == "D" {
                num = num * num
            } else if dartResult[i] == "T" {
                num = num * num * num
            }

            if i == dartResult.count - 1 {
                sum[j] = num
                break
            }

            if dartResult[i + 1].isNumber {
                sum[j] = num
                num = 0
                j += 1
            }
        } else {
            if dartResult[i] == "*" {
                if j > 0 {
                    sum[j - 1] *= 2
                    num *= 2
                } else {
                    num *= 2
                }
            } else {
                num = -num
            }
            sum[j] = num
            num = 0
            j += 1
        }
    }
    return sum.reduce(0, +)
}