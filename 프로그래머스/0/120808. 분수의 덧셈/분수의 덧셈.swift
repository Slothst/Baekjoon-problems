import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    var l = lcm(denom1, denom2)
    var numer = (numer1 * (l / denom1)) + (numer2 * (l / denom2))
    var g = gcd(numer, l)
    l /= g
    numer /= g
    return [numer, l]
}

func gcd(_ num1: Int, _ num2: Int) -> Int {
    if num2 == 0 { return num1 }
    else { return gcd(num2, num1 % num2) }
}

func lcm(_ num1: Int, _ num2: Int) -> Int {
    return num1 * num2 / gcd(num1, num2)
}