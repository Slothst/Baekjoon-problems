import Foundation

func solution(_ nums:[Int]) -> Int {
    var count = 0
    for i in 0..<nums.count - 2 {
        for j in i + 1..<nums.count - 1 {
            for k in j + 1..<nums.count {
                var sum = nums[i] + nums[j] + nums[k]
                var cnt = 0
                for i in 1...sum {
                    if sum % i == 0 {
                        cnt += 1
                    }
                }
                if cnt == 2 {
                    count += 1
                }
            }
        }
    }
    return count
}