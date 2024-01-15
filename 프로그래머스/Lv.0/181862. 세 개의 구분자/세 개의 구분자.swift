import Foundation

func solution(_ myStr:String) -> [String] {
//     var result = [String]()
//     var str = ""
//     for i in Array(myStr) {
//         if (i == "a" || i == "b" || i == "c") && str != "" {
//             result.append(str)
//             str = ""
//             continue
//         }
//         else if i == "a" || i == "b" || i == "c" {
//             continue
//         }
//         str += String(i)
//     }
    
//     if str != "" {
//         result.append(str)    
//     }
    
//     return result.isEmpty ? ["EMPTY"] : result
    
    var result = myStr.split { $0 == "a" || $0 == "b" || $0 == "c" }.map { String($0) }
    
    return result.isEmpty ? ["EMPTY"] : result
}