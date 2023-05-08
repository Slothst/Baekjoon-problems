import java.io.*;

public class _9086 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();
        int T = Integer.parseInt(br.readLine());

        for (int i = 0; i < T; i++) {
            String S = br.readLine();
            String s = Character.toString(S.charAt(0));
            s += Character.toString(S.charAt(S.length() - 1));
            sb.append(s).append("\n");
        }

        System.out.println(sb);
    }
}