package lesson2;

import java.time.LocalDate;

public class Ex1_FlowControl {
    public static void main(String[] args) {
        //Create Department:
        Department dep1 = new Department();
        dep1.department_id = 1;
        dep1.departmentName = "Dev";

        Department dep2 = new Department();
        dep2.department_id = 2;
        dep2.departmentName = "Marketing";

        Department dep3 = new Department();
        dep3.department_id = 3;
        dep3.departmentName = "Sale";

        //Create Position:
        Position pos1 = new Position();
        pos1.position_id = 1;
        pos1.positionName = "Dev";

        Position pos2 = new Position();
        pos2.position_id = 2;
        pos2.positionName = "PM";

        Position pos3 = new Position();
        pos3.position_id = 3;
        pos3.positionName = "Scrum_Master";

        //Create Account:
        Account acc1 = new Account();
        acc1.account_id = 1;
        acc1.email = "user1@gmail.com";
        acc1.userName = "user1";
        acc1.fullName = "user one";
        acc1.dep_id = dep1;
        acc1.pos_id = pos1;
        acc1.createDate = LocalDate.of(2020, 01, 18);

        Account acc2 = new Account();
        acc2.account_id = 2;
        acc2.email = "user2@gmail.com";
        acc2.userName = "user2";
        acc2.fullName = "user two";
        acc2.dep_id = dep2;
        acc2.pos_id = pos2;
        acc2.createDate = LocalDate.of(2020, 4,18);

        Account acc3 = new Account();
        acc3.account_id = 3;
        acc3.email = "user3@gmail.com";
        acc3.userName = "user3";
        acc3.fullName = "user three";
        acc3.dep_id = dep3;
        acc3.pos_id = pos3;
        acc3.createDate = LocalDate.of(2020, 3,8);

        //Create Group:
        Group g1 = new Group();
        g1.group_id = 1;
        g1.groupName = "Dev Fresher";
        g1.createDate = LocalDate.of(2019, 11, 23);

        Group g2 = new Group();
        g2.group_id = 2;
        g2.groupName = "Java Fresher";
        g2.createDate = LocalDate.of(2019, 12, 15);

        Group g3 = new Group();
        g3.group_id = 3;
        g3.groupName = "C++ Fresher";
        g3.createDate = LocalDate.of(2019, 12, 1);

        // Add group to account:
        Group[] groupAcc1 = {g1};
        acc1.groups = groupAcc1;

        Group[] groupAcc2 = {g2};
        acc2.groups = groupAcc2;

        Group[] groupAcc3 = {g3};
        acc3.groups = groupAcc3;

        // Add account to group:
        Account[] accGroup1 = {acc1, acc2, acc3};
        g1.accounts = accGroup1;

        /*Q1: Kiểm tra account thứ 2
        Nếu không có phòng ban (tức là department == null) thì sẽ in ra text
        "Nhân viên này chưa có phòng ban"
        Nếu không thì sẽ in ra text "Phòng ban của nhân viên này là ..."*/

        if(acc2.dep_id == null)
            System.out.println("Nhân viên này chưa có phòng ban");
        else
            System.out.println("Phòng ban của nhân viên này là: " + acc2.dep_id.departmentName);

        //Q2:
        if (acc2.groups == null || acc2.groups.length == 0) {
            System.out.println("Nhân viên này chưa có group");

        } else if (acc2.groups.length == 1) {
            System.out.println("Group của nhân viên này là: "
                    + acc2.groups[0].groupName);

        } else if (acc2.groups.length == 2) {
            System.out.println("Group của nhân viên này là: "
                    + acc2.groups[0].groupName + ", " + acc2.groups[1].groupName);

        } else if (acc2.groups.length == 3) {
            System.out
                    .println("Nhân viên này là người quan trọng, tham gia nhiều group");

        } else
            System.out
                    .println("Nhân viên này là người hóng chuyện, tham gia tất cả các group");

        //Q3: Sử dụng toán tử TERNARY làm Q1:
        System.out.println(acc2.dep_id == null ? "Nhân viên này chưa có phòng ban"
                : "Phòng ban của nhân viên này là: " + acc2.dep_id.departmentName);

        //Q4:
        System.out.println(pos1.positionName == "Dev" ? "Đây là Developer" : "Người này không phải là Developer");

        //Q5:
        int x = g1.accounts.length;
        switch (x){
            case 1:
                System.out.println("Nhóm có một thành viên");
                break;
            case 2:
                System.out.println("Nhóm có hai thành viên");
                break;
            case 3:
                System.out.println("Nhóm có ba thành viên");
                break;
            default:
                System.out.println("Nhóm có nhiều thành viên");
        }

        //Q6:
        int y = acc2.groups.length;
        switch (y){
            case 0:
                System.out.println("Nhân viên này chưa có group");
                break;
            case 1:
                System.out.println("Group của nhân viên này là: " + acc2.groups[0].groupName);
                break;
            case 2:
                System.out.println("Group của nhân viên này là: "
                        + acc2.groups[0].groupName + "," + acc2.groups[1].groupName);
                break;
            case 3:
                System.out.println("Nhân viên này là người quan trọng, tham gia nhiều group");
            case 4:
                System.out.println("Nhân viên này là người hóng chuyện, tham gia tất cả các group");
        }

        //Q7:
        String a = pos1.positionName;
        switch("Dev"){
            case "Dev":
                System.out.println("Đây là Developer");
                break;
            default:
                System.out.println("Người này không phải là Developer");
        }

        //Q8:
        Account[] accounts = {acc1, acc2, acc3};
        for(Account account : accounts){
            System.out.println("Email: " + account.email);
            System.out.println("FullName: " + account.fullName);
            System.out.println("Name Department: " + account.dep_id.departmentName + "\n");
        }

        //Q9:
        Department[] departments = {dep1, dep2, dep3};
        for(Department department : departments){
            System.out.println("Id: " + department.department_id);
            System.out.println("Id: " + department.departmentName + "\n");
        }

        //Q10:
        for(int i = 0; i < accounts.length; i++){
            System.out.println("Thông tin account thứ " + (i + 1) + "là : ");
            System.out.println("Email: " + accounts[i].email);
            System.out.println("Full name: " + accounts[i].fullName);
            System.out.println("Phòng ban: " + accounts[i].dep_id.departmentName + "\n");
        }

        //Q11:
        for(int i = 0; i < departments.length; i++){
            System.out.println("Thông tin department thứ " + (i + 1) + "là : ");
            System.out.println("Id: " + departments[i].department_id);
            System.out.println("Name: " + departments[i].departmentName + "\n");
        }

        //Q12:
        for(int i = 0; i < accounts.length; i++){
            System.out.println("Thông tin account thứ " + (i + 1) + "là : ");
            System.out.println("Email: " + accounts[i].email);
            System.out.println("Full name: " + accounts[i].fullName);
            System.out.println("Phòng ban: " + accounts[i].dep_id.departmentName + "\n");
            if(i == 1) break;
        }

    }
}



