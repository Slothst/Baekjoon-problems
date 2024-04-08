func solution(_ n:Int, _ m:Int) -> [Int] {
    func gcd(_ n: Int, _ m: Int) -> Int {
        var mod: Int = n % m
        return 0 == mod ? min(n, m) : gcd(m, mod)
    }

    func lcm(_ n: Int, _ m: Int) -> Int {
        return n * m / gcd(n, m);
    }
    
    return [gcd(n, m), lcm(n, m)]
}