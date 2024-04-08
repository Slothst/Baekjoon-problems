func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var arr = Array(repeating: Array(repeating: 0, count: arr1[0].count), count: arr1.count)
    for i in arr1.indices {
        for j in arr1[i].indices {
            arr[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    
    return arr
}