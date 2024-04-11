func solution(_ n:Int) -> Int {
    var count = Array(repeating: 0, count: n + 1)
    for i in 0...n {
        count[i] = i
    }
    count[1] = 0
    
    for i in 2...n {
        if count[i] == 0 {
            continue;
        }
        stride(from: i + i, to: n + 1, by: i).map { count[$0] = 0 }
    }
    
    return count.filter { $0 != 0 }.count
}