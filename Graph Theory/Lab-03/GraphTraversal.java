
import java.util.*;

public class GraphTraversal {
    static int[][] adjList = { { 1, 2 }, { 0, 2, 3 }, { 0, 1, 4 }, { 1, 4 }, { 2, 3 } };

    static int start = 0;

    public static void main(String[] args) {

        System.out.println("BFS is");
        bfs(start);
        System.out.println("DFS is");
        dfs(start);
    }

    public static void bfs(int start) {

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

    public static void dfs(int start) {
        Set<Integer> visited = new HashSet<>();
        Stack<Integer> stack = new Stack<>();
        stack.push(start);

        while (!stack.isEmpty()) {
            int vertex = stack.pop();
            if (!visited.contains(vertex)) {
                visited.add(vertex);
                // System.out.print(vertex + " ");

                for (int i = 0; i < adjList[vertex].length; i++) {
                    if (!visited.contains(adjList[vertex][i])) {
                        stack.push(adjList[vertex][i]);
                    }
                }
            }
        }
        System.out.println(visited);
    }

}