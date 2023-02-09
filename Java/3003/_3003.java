public class _3003 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int[] contents = {1, 1, 2, 2, 2, 8};
        int[] input = new int[6];
        StringTokenizer st = new StringTokenizer(br.readLine());

        for (int i = 0; i < contents.length; i++) {
            input[i] = Integer.parseInt(st.nextToken());
        }

        int[] result = new int[6];

        for (int i = 0; i < contents.length; i++) {
            result[i] = contents[i] - input[i];
        }

        for (int num : result) {
            System.out.print(num + " ");
        }
    }
}