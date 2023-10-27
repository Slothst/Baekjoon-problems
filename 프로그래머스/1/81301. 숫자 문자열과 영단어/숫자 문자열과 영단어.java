import java.util.List;

class Solution {
    final static List<String> list = List.of("zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine");
    public int solution(String s) {
        for (int i = 0; i < list.size(); i++) {
            s = changeString(s, i);
        }
        return Integer.parseInt(s);
    }
    
    public static String changeString(String s, int i) {
        boolean isAllDigit = true;
        for (char c : s.toCharArray()) {
            if (!Character.isDigit(c)) {
                isAllDigit = false;
                break;
            }
        }
        if (isAllDigit) {
            return s;
        }
        if (s.contains(list.get(i))) {
            s = s.replaceAll(list.get(i), String.valueOf(i));
        }
        return s;
    }
}   