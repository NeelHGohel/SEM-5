import java.util.*;

public class ValidParentheses {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a String:");
        String s = sc.next();
        Stack<Character> st = new Stack<>();

        for (char c : s.toCharArray()) {
            if (c == '(' || c == '{' || c == '[') {
                st.push(c);
            } else {
                if (st.isEmpty()) {
                    System.out.println("Not Valid");
                    return;
                }
                char ch1 = st.pop();
                if ((c == ')' && ch1 != '(') || (c == ']' && ch1 != '[') || (c == '}' && ch1 != '{')) {
                    System.out.println("Not Valid ");
                    return;
                }
            }
        }

        if (st.isEmpty()) {
            System.out.println("Valid");
        } else {
            System.out.println("Not Valid");
        }
    }
}