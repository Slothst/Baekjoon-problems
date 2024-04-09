import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var a = a
    var n = n
    var r = 0
    var sum = 0

    while n >= 1 {
        r = n % a
        n = n / a * b
        sum += n
        if r > 0 {
            n += r
        }
        if n < a {
            break
        }
    }
    
    return sum
}