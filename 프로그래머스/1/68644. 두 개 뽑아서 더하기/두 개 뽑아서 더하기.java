import java.util.*;

class Solution {
    public int[] solution(int[] numbers) {
        // List<Integer> list = new ArrayList<>();
        // for (int i = 0; i < numbers.length - 1; i++) {
        //     for (int j = i + 1; j < numbers.length; j++) {
        //         list.add(numbers[i] + numbers[j]);
        //     }
        // }
        // Set<Integer> set = new HashSet<>(list);
        // int[] answer = set.stream().mapToInt(Integer::intValue).toArray();
        // Arrays.sort(answer);
        // return answer;
        TreeSet<Integer> set = new TreeSet<>();
        for (int i = 0; i < numbers.length - 1; i++) {
            for (int j = i + 1; j < numbers.length; j++) {
                set.add(numbers[i] + numbers[j]);
            }
        }

        return set.stream().sorted().mapToInt(Integer::intValue).toArray();
    }
}