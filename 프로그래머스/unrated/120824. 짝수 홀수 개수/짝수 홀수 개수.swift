import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var answer = [Int]()
    var a = 0, b = 0
    for num in num_list {
        if num % 2 == 0 {
            a += 1
        } else {
            b += 1
        }
    }
    answer.append(a)
    answer.append(b)
    return answer
}