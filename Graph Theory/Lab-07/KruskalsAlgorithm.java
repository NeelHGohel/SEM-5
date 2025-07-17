
import java.util.Arrays;

public class KruskalsAlgorithm {
    public static void main(String[] args) {
        int v = 8;

        int[][] edges = {
                { 1, 2, 5 }, { 2, 3, 11 }, { 3, 7, 1 }, { 3, 5, 2 }, { 5, 1, 4 },
                { 5, 4, 3 }, { 5, 6, 6 }, { 1, 4, 10 }
        };

        KruskalsAlgorithm obj = new KruskalsAlgorithm();
        obj.algo(v, edges);
    }

    void algo(int v, int[][] edges) {
        Arrays.sort(edges, (a, b) -> a[2] - b[2]);
        Disjoint d = new Disjoint(v);
        int weight = 0;

        System.out.println("Edges in the MST:");
        for (int[] edge : edges) {
            int u = edge[0];
            int v1 = edge[1];
            int wt = edge[2];

            if (d.find(u) != d.find(v1)) {
                d.union(u, v1);
                weight += wt;
                System.out.println(u + " -- " + v1 + " == " + wt);
            }
        }

        System.out.println("Total weight of MST: " + weight);
    }
}

class Disjoint {
    int[] parent, rank;

    public Disjoint(int n) {
        parent = new int[n];
        rank = new int[n];
        for (int i = 0; i < n; i++) {
            parent[i] = i;
            rank[i] = 1;
        }
    }

    public int find(int i) {
        if (parent[i] != i) {
            parent[i] = find(parent[i]);
        }
        return parent[i];
    }

    public void union(int x, int y) {
        int s1 = find(x);
        int s2 = find(y);
        if (s1 != s2) {
            if (rank[s1] < rank[s2]) {
                parent[s1] = s2;
            } else if (rank[s1] > rank[s2]) {
                parent[s2] = s1;
            } else {
                parent[s2] = s1;
                rank[s1]++;
            }
        }
    }
}