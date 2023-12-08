import Foundation

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    var n = [Int]()
    for num in numbers[num1...num2] {
        n.append(num)
    }
    return n
}