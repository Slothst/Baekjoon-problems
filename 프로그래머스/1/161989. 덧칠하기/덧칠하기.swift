import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var start = section[0]
    var end = start + (m - 1)
    var result = 1
    
    for sec in section { 
        if (sec >= start && sec <= end) {
            continue
        }
        start = sec
        end = sec + (m - 1)
        result += 1
    }
    
    return result
}