import Foundation

func solution(_ s:String) -> Bool
{
    var pCnt = s.map { $0.lowercased() }.filter { $0 == "p" }.count
    var yCnt = s.map { $0.lowercased() }.filter { $0 == "y" }.count
    
    return pCnt == yCnt ? true : false
}