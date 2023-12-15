import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    max(Int(String(a) + String(b))!, Int(String(b) + String(a))!)
}