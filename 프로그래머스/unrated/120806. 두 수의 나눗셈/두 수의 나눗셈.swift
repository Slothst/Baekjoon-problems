import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    var answer: Double = Double(num1) / Double(num2)
    return Int(answer * 1000)
}