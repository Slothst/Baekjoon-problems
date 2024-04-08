func solution(_ n:Int, _ m:Int) -> [Int] {
    func gcd(n: Int, m: Int) -> Int {
        var n = n
        var m = m
        if (n < m) {
            var tmp = n;
            n = m;
            m = tmp;
        }
        while (m != 0) {
            var r = n % m;
            n = m;
            m = r;
        }
        return n;
    }

    func lcm(n: Int, m: Int) -> Int {
        return n * m / gcd(n: n, m: m);
    }
    
    return [gcd(n: n, m: m), lcm(n: n, m: m)]
}