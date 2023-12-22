import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    var answer = [Int]()
    answer = Array(num_list[n...])
    answer.append(contentsOf: num_list[0..<n])
    return answer
}