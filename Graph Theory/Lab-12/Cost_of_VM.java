import java.util.Scanner;

public class Cost_of_VM {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter No. of VM");
        int noOfVM = sc.nextInt();

        System.out.println("Enter No. of Task");
        int noOfTask = sc.nextInt();

        int[][] cost_mem_VM = new int[noOfVM][2];
        int[][] cost_mem_Task = new int[noOfTask][2];

        System.out.println("Enter Values for TASK");
        for (int i = 0; i < noOfTask; i++) {
            System.out.println("Enter CPU ");
            int cpu = sc.nextInt();

            System.out.println("Enter memory ");
            int mem = sc.nextInt();

            cost_mem_Task[i][0] = cpu;
            cost_mem_Task[i][1] = mem;
        }

        System.out.println("Enter Values for VM");
        for (int i = 0; i < noOfVM; i++) {
            System.out.println("Enter CPU ");
            int cpu = sc.nextInt();

            System.out.println("Enter memory ");
            int mem = sc.nextInt();

            cost_mem_VM[i][0] = cpu;
            cost_mem_VM[i][1] = mem;
        }

    }
}