package lesson3;

import java.util.Scanner;

public class EX4String {
    public static void main(String[] args) {
        Q1();
    }

    public static void Q1(){
        Scanner sc = new Scanner(System.in);
        String s1 = sc.nextLine();
        String[] khoangTrong = s1.split(" ");
        System.out.println(khoangTrong.length);
    }

    public static void Q2(){
        Scanner scanner = new Scanner(System.in);
        String s1 = scanner.nextLine();
        String s2 = scanner.nextLine();
        System.out.println("Noi Chuoi : " + s1.concat(s2));
    }


}
