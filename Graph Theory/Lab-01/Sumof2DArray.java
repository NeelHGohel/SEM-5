import java.util.Scanner;

public class Sumof2DArray {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter no of Rows in Array ");
        int n1 = sc.nextInt();
        System.out.print("Enter no of Column in Array ");
        int n2 = sc.nextInt();

        int[][] a = new int[n1][n2];
        int[][] b = new int[n1][n2];

        int[][] c = new int[n1][n2];

        System.out.println("For the first array");
        for (int i = 0; i < n1; i++) {
            for (int j = 0; j < n2; j++) {
                System.out.print("Enter number in Array-1 ");
                int num1 = sc.nextInt();
                a[i][j] = num1;
            }
        }

        System.out.println("For the Second array");
        for (int i = 0; i < n1; i++) {
            for (int j = 0; j < n2; j++) {
                System.out.print("Enter number in Array-2 ");
                int num2 = sc.nextInt();
                b[i][j] = num2;
            }
        }

        System.out.println("Array-1");

        for (int i = 0; i < n1; i++) {
            for (int j = 0; j < n2; j++) {
                System.out.print(a[i][j] + " ");
            }
            System.out.println();
        }
        System.out.println();

        System.out.println("Array-2");

        for (int i = 0; i < n1; i++) {
            for (int j = 0; j < n2; j++) {
                System.out.print(b[i][j] + " ");
            }
            System.out.println();
        }

        for (int i = 0; i < n1; i++) {
            for (int j = 0; j < n2; j++) {
                c[i][j] = a[i][j] + b[i][j];
            }
        }

        System.out.println("Sum Array");
        for (int i = 0; i < n1; i++) {
            for (int j = 0; j < n2; j++) {
                System.out.print(c[i][j] + " ");
            }
            System.out.println();
        }
    }
}
