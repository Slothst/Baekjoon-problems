import Foundation

func solution(_ n:Int) -> Int {
    (1...n).filter { num1 in (1...num1).filter { num2 in num1 % num2 == 0 }.count >= 3 }.count  
}