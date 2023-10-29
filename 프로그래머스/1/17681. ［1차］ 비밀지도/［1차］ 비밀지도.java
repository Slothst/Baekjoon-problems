class Solution {
    public String[] solution(int n, int[] arr1, int[] arr2) {
        String[][] map1 = arrToMap(n, arr1);
        String[][] map2 = arrToMap(n, arr2);
        String[] answer = new String[n];
        for (int i = 0; i < n; i++) {
            StringBuilder sb = new StringBuilder();
            for (int j = 0; j < n; j++) {
                if (!map1[i][j].equals(" ") || !map2[i][j].equals(" ")) {
                    sb.append("#");
                } else {
                    sb.append(" ");
                }
            }
            answer[i] = sb.toString();
        }
        return answer;
    }
    
    public static String[][] arrToMap(int n, int[] arr) {
        String[][] map = new String[n][n];
        String[] biArr = new String[n];
        for (int i = 0; i < n; i++) {
            String biStr = Integer.toBinaryString(arr[i]);
            StringBuilder sb = new StringBuilder();
            if (biStr.length() < n) {
                sb.append("0".repeat(n - biStr.length()));
                sb.append(biStr);
                biArr[i] = sb.toString();
            } else {
                biArr[i] = biStr;
            }
        }
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (Character.toString(biArr[i].charAt(j)).equals("0")) {
                    map[i][j] = " ";
                } else {
                    map[i][j] = "#";
                }
            }
        }
        return map;
    }
}