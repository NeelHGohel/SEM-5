
import java.util.ArrayList;
import java.util.Scanner;

public class DominantSet {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter number of vertices: ");
        int n = sc.nextInt();
        System.out.print("Enter number of edges: ");
        int m = sc.nextInt();
        int[][] adjMat = new int[n][n];

        for (int i = 0; i < m; i++) {
            System.out.print("Enter u: ");
            int u = sc.nextInt();
            System.out.print("Enter v: ");
            int v = sc.nextInt();

            adjMat[u - 1][v - 1] = 1;
            adjMat[v - 1][u - 1] = 1;
        }
        System.out.println("Adjacency Matrix:");
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                System.out.print(adjMat[i][j] + " ");
            }
            System.out.println();
        }

        boolean[] dominated = new boolean[n];
        ArrayList<Integer> dominatingSet = new ArrayList<>();

        for (int i = 0; i < n; i++) {
            if (!dominated[i]) {
                dominatingSet.add(i + 1);
                dominated[i] = true;
                for (int j = 0; j < n; j++) {
                    if (adjMat[i][j] == 1) {
                        dominated[j] = true;
                    }
                }
            }
        }
        System.out.println("Dominating Set (vertices): " + dominatingSet);

    }
}