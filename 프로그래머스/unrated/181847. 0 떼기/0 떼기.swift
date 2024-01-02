import Foundation

func solution(_ n_str:String) -> String {
//     var array = Array(n_str)
//     if array[0] != "0" {
//         return n_str
//     }

//     while true {
//         if array[0] == "0" {
//             array.removeFirst()
//             continue
//         }
//         break;
//     }

//     return array.map { String($0) }.joined()
    return String(Int(n_str)! ?? 0)
}