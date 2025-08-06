import java.util.Scanner;

public class LaplacianMatrix {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of vertices: ");
        int n = sc.nextInt();
        System.out.print("Enter number of edges: ");
        int m = sc.nextInt();

        int[][] adjMat = new int[n][n];
        int[] degreeMat = new int[n];
        int[][] laplacianMat = new int[n][n];

        for (int i = 0; i < m; i++) {
            System.out.print("Enter u: ");
            int u = sc.nextInt();
            System.out.print("Enter v: ");
            int v = sc.nextInt();

            adjMat[u - 1][v - 1] = 1;
            adjMat[v - 1][u - 1] = 1;
        }

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                degreeMat[i] += adjMat[i][j];
            }
        }

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (i == j) {
                    laplacianMat[i][j] = degreeMat[i];
                } else {
                    laplacianMat[i][j] = -adjMat[i][j];
                }
            }
        }

        System.out.println("Laplacian Matrix:");
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                System.out.print(laplacianMat[i][j] + " ");
            }
            System.out.println();
        }
    }
}
