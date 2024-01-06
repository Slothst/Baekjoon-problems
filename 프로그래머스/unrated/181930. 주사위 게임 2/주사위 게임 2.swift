import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    if a == b && b == c {
        return (a + b + c) * Int((pow(Double(a), 2) + pow(Double(b), 2) + pow(Double(c), 2))) * Int((pow(Double(a), 3) + pow(Double(b), 3) + pow(Double(c), 3)))
    } else if a == b || b == c || c == a {
        return (a + b + c) * Int((pow(Double(a), 2) + pow(Double(b), 2) + pow(Double(c), 2)))
    }
    return a + b + c
}