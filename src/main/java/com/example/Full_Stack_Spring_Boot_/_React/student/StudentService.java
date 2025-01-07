package com.example.Full_Stack_Spring_Boot_._React.student;

import com.example.Full_Stack_Spring_Boot_._React.EmailValidator;
import com.example.Full_Stack_Spring_Boot_._React.exception.ApiRequestException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;
import java.util.UUID;


@Service
public class StudentService {
    private final StudentDataAccessService studentDataAccessService;
    private final EmailValidator emailValidator;


    @Autowired
    public StudentService(StudentDataAccessService studentDataAccessService,
                          EmailValidator emailValidator) {
        this.studentDataAccessService = studentDataAccessService;
        this.emailValidator = emailValidator;
    }

    void addNewStudent(Student student) {
        addNewStudent(null,student);
    }

    void addNewStudent(UUID studentId, Student student) {
        UUID newStudentId = Optional.ofNullable(studentId).orElse(UUID.randomUUID());
        //TODO: Validate email
        if (!emailValidator.test(student.getEmail()) ) {
            throw new ApiRequestException(student.getEmail()+ " is not a valid email address");
        }

        //TODO: Verify that email is not taken
        if(studentDataAccessService.isEmailTaken(student.getEmail())){
            throw new ApiRequestException(student.getEmail() + " is taken");
        }
        studentDataAccessService.insertNewStudent(newStudentId, student);
    }

    List<Student> getAllStudents() {
        return studentDataAccessService.selectAllStudents();
    }
}
