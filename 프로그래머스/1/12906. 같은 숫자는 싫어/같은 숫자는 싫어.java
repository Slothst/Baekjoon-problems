import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Solution {
    public int[] solution(int []arr) {
        List<Integer> list = new ArrayList<>();
        int value = -1;
        for (int i : arr) {
            if (i != value) {
                list.add(i);
                value = i;
            }
        }
        return list.stream().mapToInt(Integer::intValue).toArray();
    }
}