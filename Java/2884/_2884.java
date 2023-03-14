import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class _2884 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        StringTokenizer st = new StringTokenizer(br.readLine());

        int H = Integer.parseInt(st.nextToken());
        int M = Integer.parseInt(st.nextToken());

        int m = M - 45;

        if (m < 0) {
            M = m + 60;
            H -= 1;
            if (H < 0) {
                H = 23;
            }
        }
        else {
            M = m;
        }
        System.out.println(H + " " + M);
    }
}