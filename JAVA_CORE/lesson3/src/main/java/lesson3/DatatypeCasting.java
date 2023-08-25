package lesson3;

import java.util.Random;
import java.util.Scanner;

public class DatatypeCasting {
    public static void main(String[] args) {
        Q1();
        Q23();
        Q4();
    }
    //Q1:
    public static void Q1(){
        float luong1 = 5240.5f;
        float luong2 = 10970.055f;
        System.out.println("Luong1: " + luong1 + "\n" + "Luong2: " + luong2);

        int lamTronLuong1 = (int) luong1;
        int lamTronLuong2 = (int) luong2;
        System.out.println("LamTronLuong1: " + lamTronLuong1 + "\n" + "LamTronLuong2: " + lamTronLuong2);

    }

    //Q2&&3:
    public static void Q23(){
        Random random = new Random();
        int taoSo = random.nextInt(90000) + 0;
        String soNgauNhien = String.format("%05d", taoSo);
        System.out.println("SoNgauNhien: " + soNgauNhien);

        String a = String.valueOf(soNgauNhien);
        System.out.println("Hai so cuoi: " + a.substring(3));
    }

    //Q4:
    public static void Q4(){
        Scanner sc = new Scanner(System.in);
        float a = sc.nextFloat(), b = sc.nextFloat();
        if(b != 0) System.out.println(a / b);
        else System.out.println("Vui long nhap so b khac 0.");
    }


















}
