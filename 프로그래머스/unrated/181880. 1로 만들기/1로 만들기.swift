import Foundation

func solution(_ num_list:[Int]) -> Int {
    var count = 0
    for i in 0..<num_list.count {
        var num = num_list[i]
        while num != 1 {
            if num % 2 == 0 {
                num /= 2
                count += 1
            }
            else {
                num -= 1
                num /= 2
                count += 1
            }
        }
    }
    return count
}