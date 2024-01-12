import Foundation

func solution(_ before:String, _ after:String) -> Int {
    var arr1 = Array(before).sorted()
    var arr2 = Array(after).sorted()
    
    return arr1 == arr2 ? 1 : 0
}