import java.util.List;

class Solution {
    final static List<String> list = List.of("zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine");
    public int solution(String s) {
        for (int i = 0; i < list.size(); i++) {
            s = s.replaceAll(list.get(i), Integer.toString(i));
        }
        return Integer.parseInt(s);
    }
}   