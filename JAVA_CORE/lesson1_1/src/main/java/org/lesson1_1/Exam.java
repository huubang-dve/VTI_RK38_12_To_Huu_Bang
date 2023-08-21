package org.lesson1_1;

import java.time.LocalDate;

public class Exam {
    int exam_id;
    int code;
    String title;
    CategoryQuestion cQ_id;
    int duration;
    Account account;
    LocalDate createDate;
    Question[] question;
}
