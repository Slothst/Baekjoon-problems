class Solution {
    public int[] solution(int n, int m) {
        return new int[]{gdc(n, m), lcm(n, m)};
    }

    public static int gdc(int n, int m) {
        if (n < m) {
            int tmp = n;
            n = m;
            m = tmp;
        }
        while (m != 0) {
            int r = n % m;
            n = m;
            m = r;
        }
        return n;
    }

    public static int lcm(int n, int m) {
        return n * m / gdc(n, m);
    }
}