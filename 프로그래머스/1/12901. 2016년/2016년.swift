func solution(_ a:Int, _ b:Int) -> String {
    let days = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30 ,31]
    let dates = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    
    var date = 0
    for i in 0..<a - 1 {
        date += days[i]
    }
    
    date += b - 1
    
    return dates[date % 7]
}