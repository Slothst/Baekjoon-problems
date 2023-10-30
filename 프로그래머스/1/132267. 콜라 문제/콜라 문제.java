class Solution {
    static int result = 0;
    public int solution(int a, int b, int n) {
        if (n < a) {
            return result;
        }
        int re = 0;
        while (n >= a) {
            re += b;
            n -= a;
        }
        n += re;
        result += re;
        return solution(a, b, n);
    }
}