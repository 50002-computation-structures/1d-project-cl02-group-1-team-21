public class automation {
    public static void main(String[] args) {
        // printButtonPresses(8);
        printScores(99);
    }

    private static void printStates(int num){
        for(int i = 1; i <= num - 1; i++){
            System.out.printf("GENERATE_%d,%n", i);
            System.out.printf("DISPLAY_%d,%n", i);
            System.out.printf("SHIFT_%d,%n", i);
        }
    }

    private static void printScores(int num){
        for(int i = 1; i <= num; i++){
            System.out.printf("else if (regfile_system.score == %d){%n" +
                    "\t\tbuttonCountSeg.values = {4b0, control_system.button_count}%n" +
                    "\t\tscoreSeg.values = {4d%d, 4d%d}%n}",i, i/10, i%10);
        }
    }

    private static void printButtonPresses(int num){
        for(int i = 2; i <= num - 1; i++){
            System.out.printf("WAIT_PRESS%d,%n", i);
            System.out.printf("STORE_PRESS%d,%n", i);
            System.out.printf("SHIFT_PRESS%d,%n", i);
        }
    }
}
