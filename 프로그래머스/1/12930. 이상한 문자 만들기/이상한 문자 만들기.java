import java.util.regex.Pattern;

class Solution {
    public String solution(String s) {
        String[] split = s.split(" ", -1);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < split.length; i++) {
            char[] charArray = split[i].toCharArray();
            for (int j = 0; j < split[i].length(); j++) {
                if (j % 2 == 0) {
                    charArray[j] = Character.toUpperCase(charArray[j]);
                } else {
                    charArray[j] = Character.toLowerCase(charArray[j]);
                }
            }
            if (i == split.length - 1) {
                sb.append(charArray);
            } else {
                sb.append(charArray).append(" ");
            }
        }
        return sb.toString();
    }
}