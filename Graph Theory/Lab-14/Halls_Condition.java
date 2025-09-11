// Given a bipartite graph with parts X and Y, check if Hall’s condition holds.

import java.util.*;

public class Halls_Condition {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of vertices in X: ");
        int xSize = sc.nextInt();
        System.out.print("Enter number of vertices in Y: ");
        int ySize = sc.nextInt();

        List<List<Integer>> adj = new ArrayList<>();
        for (int i = 0; i < xSize; i++) {
            System.out.print("Enter number of neighbors of X[" + (i + 1) + "]: ");
            int k = sc.nextInt();
            List<Integer> neighbors = new ArrayList<>();
            System.out.print("Enter neighbors (indices in Y, 1-based): ");
            for (int j = 0; j < k; j++) {
                neighbors.add(sc.nextInt() - 1);
            }
            adj.add(neighbors);
        }

        boolean hallsHolds = true;
        int totalSubsets = 1 << xSize;
        for (int mask = 1; mask < totalSubsets; mask++) {
            Set<Integer> unionY = new HashSet<>();
            int countX = 0;
            for (int i = 0; i < xSize; i++) {
                if ((mask & (1 << i)) != 0) {
                    countX++;
                    unionY.addAll(adj.get(i));
                }
            }
            if (unionY.size() < countX) {
                hallsHolds = false;
                break;
            }
        }

        if (hallsHolds) {
            System.out.println("Hall's condition holds for this bipartite graph.");
        } else {
            System.out.println("Hall's condition does NOT hold for this bipartite graph.");
        }
    }
}