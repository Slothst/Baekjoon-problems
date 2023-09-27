import java.io.*;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int N = Integer.parseInt(br.readLine());

        String s = br.readLine();
        String[] arr = s.split("");

        int sum = 0;
        for (int i = 0; i < N; i++) {
            sum += Integer.parseInt(arr[i]);
        }

        System.out.println(sum);
    }
}