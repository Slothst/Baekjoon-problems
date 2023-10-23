class Solution {
    public String solution(String phone_number) {
        StringBuilder sb = new StringBuilder();
        String[] arr = phone_number.split("");
        for (int i = 0; i < phone_number.length() - 4; i++) {
            arr[i] = arr[i].replaceAll("[0-9]", "*");
            sb.append(arr[i]);
        }
        for (int i = phone_number.length() - 4; i < phone_number.length(); i++) {
            sb.append(arr[i]);
        }
        return sb.toString();
    }
}