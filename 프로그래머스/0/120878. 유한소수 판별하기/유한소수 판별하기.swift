import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var b = b
    var n = gcd(a, b)
    b /= n
    if b == 1 {
        return 1
    }
    var result = [Int]()
    
    for i in (2...b) {
        if b % i == 0 && !result.contains(where: { i % $0 == 0 }) {
            result.append(i)
        }
    }
    
    for i in result {
        if i != 2 && i != 5 {
            return 2
        }
    }
    
    return 1
}

func gcd(_ n1: Int, _ n2: Int) -> Int {
    if (n2 == 0) { return n1 }
    else { return gcd(n2, n1 % n2) }
}