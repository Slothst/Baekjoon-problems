import java.io.*;
import java.util.StringTokenizer;

public class _11022 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int T = Integer.parseInt(br.readLine());

        StringTokenizer st;
        for (int i = 1; i <= T; i++) {
            st = new StringTokenizer(br.readLine());
            int A = Integer.parseInt(st.nextToken());
            int B = Integer.parseInt(st.nextToken());
            int sum = A + B;
            bw.write("Case #" + i + ": " + A + " + " + B + " = " + sum + "\n");
        }
        bw.flush();
        bw.close();
    }
}