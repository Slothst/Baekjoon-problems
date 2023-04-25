import java.io.*;

public class _2562 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int[] arr = new int[9];

        for (int i = 0; i < 9; i++) {
            arr[i] = Integer.parseInt(br.readLine());
        }

        int max = 0;
        int index = 0;
        int num = 0;

        for (int value : arr) {
            num++;
            if (value > max) {
                max = value;
                index = num;
            }
        }

        System.out.print(max + "\n" + index);
    }
}