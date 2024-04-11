import Foundation

func solution(_ nums:[Int]) -> Int {
    func isPrime(_ num: Int) -> Bool {
        var n = 2
        while n < num {
            if num % n == 0 { return false }
            n += 1
        }
        return true
    }
    
    var count = 0
    for i in 0..<nums.count - 2 {
        for j in i + 1..<nums.count - 1 {
            for k in j + 1..<nums.count {
                var sum = nums[i] + nums[j] + nums[k]
                if isPrime(sum) { count += 1 }
            }
        }
    }
    return count
}