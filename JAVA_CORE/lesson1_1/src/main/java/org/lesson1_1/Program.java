package org.lesson1_1;

import java.time.LocalDate;

public class Program {
    public static void main(String[] args) {
        // Department:
        Department dep1 = new Department();
        dep1.department_id = 1;
        dep1.departmentName = "Dev";

        Department dep2 = new Department();
        dep2.department_id = 2;
        dep2.departmentName = "Sale";

        Department dep3 = new Department();
        dep3.department_id = 3;
        dep3.departmentName = "Marketing";

        // Position:
        Position pos1 = new Position();
        pos1.position_id = 1;
        pos1.positionName = "Dev";

        Position pos2 = new Position();
        pos2.position_id = 2;
        pos2.positionName = "Test";

        Position pos3 = new Position();
        pos3.position_id = 3;
        pos3.positionName = "Scrum_Master";

        // Account:
        Account acc1 = new Account();
        acc1.account_id = 1;
        acc1.email = "user1@gmail.com";
        acc1.userName = "user1";
        acc1.fullName = "user one";
        acc1.dep_id = dep1;
        acc1.pos_id = pos1;
        acc1.createDate = LocalDate.now();

        Account acc2 = new Account();
        acc2.account_id = 2;
        acc2.email = "user2@gmail.com";
        acc2.userName = "user2";
        acc2.fullName = "user two";
        acc2.dep_id = dep2;
        acc2.pos_id = pos2;
        acc2.createDate = LocalDate.now();

        Account acc3 = new Account();
        acc3.account_id = 3;
        acc3.email = "user3@gmail.com";
        acc3.userName = "user3";
        acc3.fullName = "user three";
        acc3.dep_id = dep3;
        acc3.pos_id = pos3;
        acc3.createDate = LocalDate.now();
        //Group:
        Group group1 = new Group();
        group1.group_id = 1;
        group1.groupName = "Testing System";

        Group group2 = new Group();
        group2.group_id = 2;
        group2.groupName = "Development";

        Group group3 = new Group();
        group3.group_id = 3;
        group3.groupName = "Sale";

        //Department:
        System.out.println("Id: " + dep1.department_id);
        System.out.println("Name: " + dep1.departmentName + "\n");

        //Account:
        System.out.println("Id: " + acc1.account_id);
        System.out.println("Email: " + acc1.email);
        System.out.println("User Name: " + acc1.userName);
        System.out.println("Full Name: " + acc1.fullName);
        System.out.println("Department: " + dep1.department_id);
        System.out.println("Position: " + pos1.position_id);
        System.out.println("Create Date: " + acc1.createDate);
    }
}
