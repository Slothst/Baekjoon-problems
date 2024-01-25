import Foundation

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    var arr = Array(my_string)
    arr[s..<s+overwrite_string.count] = ArraySlice(overwrite_string)
    
    return String(arr)
}