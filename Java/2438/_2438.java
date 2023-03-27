import java.io.*;

public class _2438 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int N = Integer.parseInt(br.readLine());

        StringBuilder result = new StringBuilder();
        for (int i = 0; i < N; i++) {
            System.out.println(result + "*");
            result.append("*");
        }
    }
}