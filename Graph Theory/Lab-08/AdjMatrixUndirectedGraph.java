
import java.util.Scanner;

public class AdjMatrixUndirectedGraph {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the No of Vertex ");
        int size = sc.nextInt();

        int[][] matrix = new int[size][size];

        System.out.println("Enter No.of edges ");
        int e = sc.nextInt();

        for (int i = 0; i < e; i++) {
            System.out.print("Enter u ");
            int u = sc.nextInt();
            System.out.print("Enter v ");
            int v = sc.nextInt();

            matrix[u - 1][v - 1] = 1;
            matrix[v - 1][u - 1] = 1;

        }
        System.out.println("Adjacency Matrix:");
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                System.out.print(matrix[i][j] + " ");
            }
            System.out.println();
        }

    }
}
