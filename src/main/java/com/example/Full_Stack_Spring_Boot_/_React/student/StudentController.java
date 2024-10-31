package com.example.Full_Stack_Spring_Boot_._React.student;
import org.springframework.web.bind.annotation.CrossOrigin;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("student")
@CrossOrigin(origins = "http://localhost:3000")
public class StudentController {
    @GetMapping
    public List<Student> getAllStudents() {
        return List.of(
                new Student(
                        UUID.randomUUID(),
                        "James",
                        "Bond",
                        "wewe@mai.ru",
                        Student.Gender.MALE),

                new Student(
                        UUID.randomUUID(),
                        "Maria",
                        "Ivanova",
                        "wewe@mai.ru",
                        Student.Gender.FEMALE),

                new Student(
                        UUID.randomUUID(),
                        "Sveta",
                        "Petrova",
                        "wewe@mai.ru",
                        Student.Gender.FEMALE)
        );

    };
}
