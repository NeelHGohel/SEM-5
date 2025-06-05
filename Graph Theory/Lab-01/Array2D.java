import java.util.Scanner;

public class Array2D {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter no of Rows in Array ");
        int n1 = sc.nextInt();
        System.out.print("Enter no of Column in Array ");
        int n2 = sc.nextInt();

        int[][] a = new int[n1][n2];

        for (int i = 0; i < n1; i++) {
            for (int j = 0; j < n2; j++) {
                System.out.print("Enter number ");
                int num = sc.nextInt();
                a[i][j] = num;
            }
        }

        for (int i = 0; i < n1; i++) {
            for (int j = 0; j < n2; j++) {
                System.out.print(a[i][j]+" ");
            }
            System.out.println();
        }
    }
}
