import java.util.ArrayList;
import java.util.List;

class Solution {
    public int[] solution(String s) {
        int[] arr = new int[s.length()];
        List<Character> list = new ArrayList<>();
        for (int i = 0; i < s.length(); i++) {
            int idx = -1;
            if (list.contains(s.charAt(i))) {
                list.add(s.charAt(i));
                idx = 0;
                for (int j = i - 1; j >= 0; j--) {
                    idx++;
                    if (list.get(j).equals(s.charAt(i))) {
                        break;
                    }
                }
            } else {
                list.add(s.charAt(i));
            }
            arr[i] = idx;
        }
        return arr;
    }
}