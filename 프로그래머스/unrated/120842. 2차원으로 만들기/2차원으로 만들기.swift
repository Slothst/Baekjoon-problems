import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var result = [[Int]]()
    var arr = [Int]()
    for i in 0..<num_list.count {
        if i % n == 0 && i != 0{
            result.append(arr)
            arr.removeAll()
        }
        arr.append(num_list[i])
    }
    result.append(arr)
    return result
}