import java.util.Arrays;
import java.util.Collections;

class Solution {
    public String solution(String s) {
        StringBuilder sb = new StringBuilder();
        String[] arr = s.split("");
        Arrays.sort(arr, Collections.reverseOrder());
        for (String str : arr) {
            sb.append(str);
        }
        return sb.toString();
    }
}