import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    if num == 1 {
        return [total]
    }
    var result = [Int]()
    
    var div = total / num
    result.append(div)
    if num % 2 == 1 {
        for i in 1...((num - 1) / 2) {
            result.append(div - i)
            result.append(div + i)
        }
    } else {
        for i in 1..<total % num {
            result.append(div - i)
            result.append(div + i)
        }
        result.sorted()
        result.append(result.last! + 1)
    }
    return result.sorted()
}