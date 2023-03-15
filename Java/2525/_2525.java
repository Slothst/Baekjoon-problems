import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class _2525 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        StringTokenizer st = new StringTokenizer(br.readLine());

        int A = Integer.parseInt(st.nextToken());
        int B = Integer.parseInt(st.nextToken());

        int C = Integer.parseInt(br.readLine());
        int D = B + C;

        if (D < 60) {
            System.out.println(A + " " + D);
        }
        else if (D > 60) {
            int E = D / 60;
            int F = D % 60;

            if (A + E > 23) {
                A = (A + E) - 24;
            }
            else {
                A = A + E;
            }
            System.out.println(A + " " + F);
        }
    }
}