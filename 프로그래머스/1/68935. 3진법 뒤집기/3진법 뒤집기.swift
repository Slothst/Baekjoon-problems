import Foundation

func solution(_ n:Int) -> Int {
    var flipToThree = String(n, radix: 3)
    return Int(String(flipToThree.reversed()), radix: 3)!
}