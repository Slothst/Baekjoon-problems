import Foundation

func solution(_ n:Int) -> [Int] {
    var arr = [n]
    var num = n
    while num != 1 {
        if num % 2 == 0 {
            num /= 2
            arr.append(num)
        } else {
            num  = 3 * num + 1
            arr.append(num)
        }
    }
    
    return arr
}