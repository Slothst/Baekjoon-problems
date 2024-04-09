import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var cokeCount = n
    var receivedCount = 0
    
    while cokeCount >= a {
        receivedCount += (cokeCount / a * b)
        cokeCount = (cokeCount / a * b) + (cokeCount % a)
    }
    
    return receivedCount
}