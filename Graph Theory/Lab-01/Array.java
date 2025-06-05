import java.util.Scanner;

public class Array {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter Size of Array ");
        int n = sc.nextInt();

        int[] a = new int[n];

        for (int i = 0; i < n; i++) {
            System.out.print("Enter number ");
            int num = sc.nextInt();
            a[i] = num;
        }
        for (int i = 0; i < n; i++) {
            System.out.print(" " + a[i]);
        }
        System.out.println();

        int max = a[0];
        int min = a[0];
        
        for (int i = 0; i < n; i++) {
            if (min > a[i]) {
                min = a[i];
            }
            if (max < a[i]) {
                max = a[i];
            }
        }
        System.out.println("Minimum Number From Array is " + min);
        System.out.println("Maximum Number From Array is " + max);

    }
}