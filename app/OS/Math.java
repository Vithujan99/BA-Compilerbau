package OS;

public class Math {
    static int[] twoToThe;
    public Math(){
        twoToThe = new int[16];
        int val = 1;
        for(int i = 0; i < 16; i++){
            twoToThe[i] = val;
            val = val + val;
        }
    }
    //Was mach  diese Funktion genau??
    public static boolean bit(int num, int i){
        return ((num & twoToThe[i]) != 0);
    }

    public static int abs(int x){
        return java.lang.Math.abs(x);
    }

    public static int multiply(int x, int y){
        return x * y;
    }
    public static int divide(int x, int y){
        return x / y;
    }

    public static int sqrt(int x){
        return (int) java.lang.Math.sqrt(x);
    }
    public static int max(int a, int b){
        return java.lang.Math.max(a, b);
    }
    public static int min(int a, int b){
        return java.lang.Math.min(a, b);
    }
}
