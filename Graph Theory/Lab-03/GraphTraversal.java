
import java.util.*;

public class GraphTraversal {
    public static void main(String[] args) {
        int[][] adjList = { { 1, 2 }, { 0, 2, 3 }, { 0, 1, 4 }, { 1, 4 }, { 2, 3 } };
        int start = 0;
        bfs(start, adjList);
    }

    public static void bfs(int start, int[][] adjList) {

        Set<Integer> visited = new HashSet<>();
        Queue<Integer> queue = new LinkedList<>();

        queue.add(start);

        while (!queue.isEmpty()) {
            int vertax = queue.poll();
            // System.out.println("Vertax is " + vertax);
            visited.add(vertax);
            for (int i = 0; i < adjList[vertax].length; i++) {
                if (!visited.contains(adjList[vertax][i]) && !queue.contains(adjList[vertax][i])) {
                    queue.add(adjList[vertax][i]);
                }
            }
        }
        System.out.println(visited);
    }

    public static void dfs(int start, int[][] adjList) {
        
    }
}