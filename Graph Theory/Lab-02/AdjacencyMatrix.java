
import java.util.Scanner;

public class AdjacencyMatrix {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the No of Vertex ");
        int size = sc.nextInt();

        int[][] matrix = new int[size][size];

        System.out.println("Enter No.of edges ");
        int e = sc.nextInt();

        System.out.println("Enter " + e + " edges (u v): ");
        for (int i = 0; i < e; i++) {
            System.out.print("Enter u ");
            int u = sc.nextInt();
            System.out.print("Enter v ");
            int v = sc.nextInt();

            matrix[u][v] = 1;

        }

        for (int i = 0; i < size; i++) {
            System.out.print("" + i + "-> ");
            for (int j = 0; j < size; j++) {
                if (matrix[i][j] == 1) {
                    System.out.print(j + ",");

                }

            }
            System.out.println();
        }

        System.out.println("Adjacency Matrix:");
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                System.out.print(matrix[i][j] + " ");
            }
            System.out.println();
        }

        sc.close();
    }
}
