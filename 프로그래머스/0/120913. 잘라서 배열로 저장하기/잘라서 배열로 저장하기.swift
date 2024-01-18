import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var result = [String]()
    var count = 0
    var str = ""

    for i in Array(my_str) {
        if count == n {
            result.append(str)
            str = ""
            count = 0
        }
        str += String(i)
        count += 1
    }
    result.append(str)
    return result
}