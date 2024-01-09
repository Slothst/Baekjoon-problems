import Foundation

func solution(_ str1:String, _ str2:String) -> String {
//     var arr1 = Array(str1)
//     var arr2 = Array(str2)
//     var result = ""

//     for i in 0..<str1.count {
//         result += String(arr1[i])
//         result += String(arr2[i])
//     }

//     return result
    return zip(str1, str2).map { String($0) + String($1) }.joined()
}