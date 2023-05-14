import java.io.*;
import java.util.StringTokenizer;

public class _2675 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st;
        StringBuilder sb = new StringBuilder();

        int T = Integer.parseInt(br.readLine());

        for (int i = 0; i < T; i++) {
            st = new StringTokenizer(br.readLine());
            int R = Integer.parseInt(st.nextToken());
            String S = st.nextToken();
            for (int j = 0; j < S.length(); j++) {
                sb.append(String.valueOf(S.charAt(j)).repeat(Math.max(0, R)));
            }
            sb.append("\n");
        }
        System.out.print(sb);
    }
}