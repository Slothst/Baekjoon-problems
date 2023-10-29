import java.util.Arrays;

class Solution {
    public String[] solution(String[] strings, int n) {
        String[] arr = new String[strings.length];
        for (int i = 0; i < strings.length; i++) {
            arr[i] = Character.toString(strings[i].charAt(n));
        }
        Arrays.sort(arr);
        Arrays.sort(strings);
        boolean[] visited = new boolean[strings.length];
        for (int i = 0; i < arr.length; i++) {
            for (int j = 0; j < arr.length; j++) {
                if (Character.toString(strings[j].charAt(n)).equals(arr[i]) && !visited[j]) {
                    arr[i] = strings[j];
                    visited[j] = true;
                    break;
                }
            }
        }
        return arr;
    }
}