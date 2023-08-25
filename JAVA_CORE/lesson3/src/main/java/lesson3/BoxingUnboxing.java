package lesson3;

public class BoxingUnboxing {
    public static void main(EX4String[] args) {
        Q1();
        Q2();
        Q3();
    }

    public static void Q1(){
        Integer luong = 5000;
        System.out.printf("%2.2f", (float) luong);
        System.out.print("\n");
    }

    public static void Q2(){
        String s = "1234567";
        Integer n = Integer.parseInt(s);
        System.out.println(n);
    }

    public static void Q3(){
        Integer a = 1234567;
        int b = a.intValue();
        System.out.println(b);
    }

}
