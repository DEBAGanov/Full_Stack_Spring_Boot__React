package com.example.Full_Stack_Spring_Boot_._React.student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;


@Service
public class StudentService {
    private final StudentDataAccsessService studentDataAccsessService;

    @Autowired
    public StudentService(StudentDataAccsessService studentDataAccsessService) {
        this.studentDataAccsessService = studentDataAccsessService;
    }

    public List<Student> getAllStudents() {
        return studentDataAccsessService.selectAllStudents();
    }
}
