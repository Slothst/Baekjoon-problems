func solution(_ s:String) -> String {
    var arr = Array(s)

    if arr.count % 2 == 0 {
        return String(arr[arr.count / 2 - 1...arr.count / 2])
    } else {
        return String(arr[arr.count / 2])
    }
}