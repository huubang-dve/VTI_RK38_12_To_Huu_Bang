package lesson2;

import java.time.LocalDate;

public class Question {
    int question_id;
    String content;
    CategoryQuestion cQ_id;
    TypeQuestion tQ_id;
    Account creator;
    LocalDate createDate;
}
