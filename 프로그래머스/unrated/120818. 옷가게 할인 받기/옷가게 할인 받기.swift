import Foundation

func solution(_ price:Int) -> Int {
    return price >= 500_000 ? Int(Double(price) * 0.8) : price >= 300_000 ? Int(Double(price) * 0.9) : price >= 100_000 ? Int(Double(price) * 0.95) : price
}