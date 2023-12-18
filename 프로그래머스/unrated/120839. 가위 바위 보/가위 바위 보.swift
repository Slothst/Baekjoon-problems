import Foundation

func solution(_ rsp:String) -> String {
    var answer = ""
    for item in rsp.map { $0 } {
        switch String(item) {
            case "2": answer += "0"
            case "0": answer += "5"
            default: answer += "2"
        }
    }
    return answer
}