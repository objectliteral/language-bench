public class Prime {

    public static int MAX = 10000000;

    public static void main(String args[]) {

        int n = 1;

        for (int i = 3; i <= MAX; i += 2) {

            boolean isPrime = true;
            int sqrti = (int) Math.floor(Math.sqrt(i));

            for (int j = 3; j <= sqrti; j += 2) {
                if (i % j == 0) {
                    isPrime = false;
                    break;
                }
            }

            if (isPrime == true) {
                n += 1;
            }

        }

        System.out.println("There are " + n + " prime numbers between 0 and " + MAX);

    }

}