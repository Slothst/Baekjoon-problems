import java.io.*;
import java.util.StringTokenizer;

public class _10811 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st;

        st = new StringTokenizer(br.readLine());
        int N = Integer.parseInt(st.nextToken());
        int M = Integer.parseInt(st.nextToken());

        int[] arr = new int[N];
        for (int i = 0; i < N; i++) {
            arr[i] = i + 1;
        }

        for (int i = 0; i < M; i++) {
            st = new StringTokenizer(br.readLine());
            int order1 = Integer.parseInt(st.nextToken()) - 1;
            int order2 = Integer.parseInt(st.nextToken()) - 1;

            while (order1 < order2) {
                int temp = arr[order1];
                arr[order1++] = arr[order2];
                arr[order2--] = temp;
            }
        }

        String ret = "";
        for (int i = 0; i < arr.length; i++) {
            ret += arr[i] + " ";
        }
        System.out.println(ret.trim());
    }
}