class Solution {
    public int solution(int[][] sizes) {
        int max_v = 0;
        int max_h = 0;
        for (int[] size : sizes) {
            int v = Math.max(size[0], size[1]);
            int h = Math.min(size[0], size[1]);
            max_v = Math.max(max_v, v);
            max_h = Math.max(max_h, h);
        }
        return max_v * max_h;
    }
}