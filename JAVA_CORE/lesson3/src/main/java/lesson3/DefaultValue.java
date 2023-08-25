package lesson3;

import java.time.LocalDate;

public class DefaultValue {
    public static void main(EX4String[] args) {
        //Q1:
        Account[] accounts = new Account[5];

        for(int i = 0; i < 5; i++){
           Account acc = new Account();
           acc.email = "Email " + (i + 1);
           acc.userName = "Username " + (i + 1);
           acc.fullName = "Fullname " + (i + 1);
           acc.createDate = LocalDate.now();

           accounts[i] = acc;
        }

        for (Account acc : accounts) {
            System.out.println(acc.email);
            System.out.println(acc.userName);
            System.out.println(acc.fullName);
            System.out.println(acc.createDate);
            System.out.println("\n");
        }

    }

}
