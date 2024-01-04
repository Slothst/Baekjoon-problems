import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var arr = numbers
    
    if direction == "right" {
        var temp = arr[arr.count - 1]
        arr.remove(at: arr.count - 1)
        arr.insert(temp, at: 0)
    } else {
        var temp = arr[0]
        arr.remove(at: 0)
        arr.append(temp)
    }
    return arr
}