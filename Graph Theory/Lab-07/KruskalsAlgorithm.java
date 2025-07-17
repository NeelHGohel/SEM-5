
import java.util.*;


// Pending *****************

public class KruskalsAlgorithm {
    public static void main(String[] args) {

        int[][] edges = {
                { 1, 2, 5 }, { 2, 3, 11 }, { 3, 7, 1 }, { 3, 5, 2 }, { 5, 1, 4 }, { 5, 4, 3 }, { 5, 6, 6 },
                { 1, 4, 10 } };
        Arrays.sort(edges, (a, b) -> a[2] - b[2]);

        for (int i = 0; i < edges.length; i++) {
            // System.out.print(edges[i] + " ");
            for (int j = 0; j < 3; j++) {
                System.out.print(edges[i][j] + " ");
            }
        }

    }
}