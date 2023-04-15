import java.io.*;
import java.util.StringTokenizer;

public class _10952 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = null;
        StringBuilder sb = new StringBuilder();
        while (true) {
            st = new StringTokenizer(br.readLine());
            int A = Integer.parseInt(st.nextToken());
            int B = Integer.parseInt(st.nextToken());

            if (A + B == 0) {
                break;
            } else {
                sb.append(A + B + "\n");
            }
        }
        System.out.print(sb);
    }
}