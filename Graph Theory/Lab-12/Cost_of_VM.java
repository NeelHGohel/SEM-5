import java.util.Scanner;

public class Cost_of_VM {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter No. of VM");
        int noOfVM = sc.nextInt();

        System.out.println("Enter No. of Task");
        int noOfTask = sc.nextInt();

        int[][] cpu_mem_VM = new int[noOfVM][2];
        int[][] cpu_mem_Task = new int[noOfTask][2];

        System.out.println("Enter Values for TASK");
        for (int i = 0; i < noOfTask; i++) {
            System.out.println("Enter CPU ");
            int cpu = sc.nextInt();

            System.out.println("Enter memory ");
            int mem = sc.nextInt();

            cpu_mem_Task[i][0] = cpu;
            cpu_mem_Task[i][1] = mem;
        }

        System.out.println("Enter Values for VM");
        for (int i = 0; i < noOfVM; i++) {
            System.out.println("Enter CPU ");
            int cpu = sc.nextInt();

            System.out.println("Enter memory ");
            int mem = sc.nextInt();

            cpu_mem_VM[i][0] = cpu;
            cpu_mem_VM[i][1] = mem;
        }

        int[][] costMatrix = { { 1, 2, 3 }, { 3, 1, 5 }, { 2, 2, 4 } };

        for (int i = 0; i < noOfTask; i++) {
            int selectedVM = -1;
            int minCost = Integer.MAX_VALUE;

            for (int j = 0; j < noOfVM; j++) {
                if (cpu_mem_VM[j][0] >= cpu_mem_Task[j][0] && cpu_mem_VM[j][1] >= cpu_mem_Task[j][1]
                        && costMatrix[i][j] < minCost) {
                    minCost = costMatrix[i][j];
                    selectedVM = j;

                }

            }
            cpu_mem_VM[selectedVM][0] -= cpu_mem_Task[i][0];
            cpu_mem_VM[selectedVM][1] -= cpu_mem_Task[i][1];

            System.out.println("Selected VM is " + (selectedVM + 1));
            System.out.println("Cost for this is " + minCost);
            System.out.println();
        }

    }
}