
import java.util.LinkedList;
import java.util.Queue;

public class SymmetricTreeCheck {
    public static void main(String[] args) {
        Node root = new Node(1);
        // Node left = new Node(2);
        // Node right = new Node(2);

        root.left = new Node(2);
        root.right = new Node(2);

        root.left.left = new Node(3);
        root.left.right = new Node(4);
        root.right.left = new Node(4);
        root.right.right = new Node(3);
        // Node.preOrder(root);

        System.out.println(check(root));
    }

    public static boolean check(Node root) {
        Queue<Node> queue = new LinkedList<Node>();

        // System.out.println(root.left.value);
        // System.out.println(root.right.value);
        // System.out.println(" :::::::::::::::");

        queue.add(root.left);
        queue.add(root.right);

        while (!queue.isEmpty()) {

            Node a = queue.poll();
            Node b = queue.poll();

            if (a == null && b == null) {
                continue;
            }
            if (a == null || b == null) {
                return false;
            }

            if (a.value != b.value) {
                return false;
            }
            if (a.value == b.value) {
                continue;
            }

            queue.add(root.left.left);
            queue.add(root.right.right);
            queue.add(root.left.right);
            queue.add(root.right.left);

        }
        return true;

    }
}

class Node {
    int value;
    Node left;
    Node right;

    public Node(int value) {
        this.value = value;
        this.left = null;
        this.right = null;
    }

    public static void preOrder(Node root) {
        if (root == null) {
            return;
        }

        System.out.print(root.value + "-");
        preOrder(root.left);
        preOrder(root.right);
    }
}
