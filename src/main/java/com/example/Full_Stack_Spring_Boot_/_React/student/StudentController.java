package com.example.Full_Stack_Spring_Boot_._React.student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("students")
@CrossOrigin(origins = "http://localhost:3000")
public class StudentController {

    private final StudentService studentService;
    @Autowired
    public StudentController(StudentService studentService) {
        this.studentService = studentService;
    }

    @GetMapping
    public List<Student> getAllStudents() {
        // throw new IllegalStateException("Oops cannot get all students");
        // throw new ApiRequestException("Oops cannot get all students with custom exeption");
        return studentService.getAllStudents();
    }
    @PostMapping
    public void addNewStudent(@RequestBody @Validated Student student) {
        studentService.addNewStudent(student);
        System.out.println("Student added: "+ student);
    }

}
