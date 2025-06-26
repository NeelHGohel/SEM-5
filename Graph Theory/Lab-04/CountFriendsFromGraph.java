import java.util.*;

public class CountFriendsFromGraph {
    static Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.println("Enter the No of Vertex ");
        int size = sc.nextInt();
        int[][] adjMatrix = new int[size][size];
        Adj(adjMatrix);
    }

    public static void Adj(int[][] adjMatrix) {

        System.out.println("Enter No.of edges ");
        int e = sc.nextInt();

        int temp[][] = new int[adjMatrix.length][adjMatrix.length];

        System.out.println("Enter " + e + " edges (u v): ");
        for (int i = 0; i < e; i++) {
            System.out.print("Enter u ");
            int u = sc.nextInt();
            System.out.print("Enter v ");
            int v = sc.nextInt();

            temp[u][u] = 1;
            temp[v][v] = 1;
            temp[u][v] = 1;
            temp[v][u] = 1;
            System.out.println("Matrix ma 1 added");

        }

        System.out.println("Adjacency Matrix:");
        for (int i = 0; i < temp.length; i++) {
            for (int j = 0; j < temp.length; j++) {
                System.out.print(temp[i][j] + " ");
            }
            System.out.println();
        }

    }

    public static void dfs(int start, int[][] temp) {
        Set<Integer> visited = new HashSet<>();
        Stack<Integer> stack = new Stack<>();
        stack.push(start);

        while (!stack.isEmpty()) {
            int vertex = stack.pop();
            if (!visited.contains(vertex)) {
                visited.add(vertex);
                // System.out.print(vertex + " ");

                for (int i = 0; i < temp[vertex].length; i++) {
                    if (!visited.contains(temp[vertex][i])) {
                        stack.push(temp[vertex][i]);
                    }
                }
            }
        }
        System.out.println(visited);
    }
}