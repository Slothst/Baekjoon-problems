import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

class Solution {
    public int[] solution(int[] arr) {
        if (arr.length == 1) {
            return new int[]{-1};
        }

        int min = Integer.MAX_VALUE;
        int index = 0;
        for (int i = 0; i < arr.length; i++) {
            if (min > arr[i]) {
                min = arr[i];
                index = i;
            }
        }
        List<Integer> list = Arrays.stream(arr).boxed().collect(Collectors.toList());
        list.remove(index);

        return list.stream().mapToInt(Integer::intValue).toArray();
    }
}