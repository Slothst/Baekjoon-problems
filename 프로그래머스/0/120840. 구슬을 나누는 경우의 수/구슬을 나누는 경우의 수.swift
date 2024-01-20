import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    var balls = balls
    var answer = 1
    var cnt = 1
    while(cnt <= share) {
        answer *= balls
        answer /= cnt
        balls -= 1
        cnt += 1
    }
    return answer
}