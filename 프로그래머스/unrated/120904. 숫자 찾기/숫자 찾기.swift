import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    Array("-\(num)").firstIndex(of: Character(String(k))) ?? -1
}