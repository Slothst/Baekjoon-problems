import Foundation

func solution(_ arr:[Int]) -> [Int] {
    
    var firstIndex = arr.firstIndex(of: 2) ?? 0
    var lastIndex = arr.lastIndex(of: 2) ?? 0           
    return firstIndex == 0 && lastIndex == 0 ? [-1] : Array(arr[firstIndex...lastIndex])
}