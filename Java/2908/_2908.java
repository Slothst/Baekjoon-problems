import java.io.*;
import java.util.StringTokenizer;

public class _2908 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        int[] arr = new int[2];

        for (int i = 0; i < 2; i++) {
            int A = Integer.parseInt(st.nextToken());
            int a = A / 100; // 7
            int b = A % 100; // 34
            int c = b / 10; // 3
            int d = b % 10; // 4
            arr[i] = (d * 100) + (c * 10) + a;
        }

        System.out.println(Math.max(arr[0], arr[1]));
    }
}