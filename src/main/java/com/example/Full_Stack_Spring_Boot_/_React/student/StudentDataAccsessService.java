package com.example.Full_Stack_Spring_Boot_._React.student;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Repository
public class StudentDataAccsessService {

    private final JdbcTemplate jdbcTemplate;

    public StudentDataAccsessService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    List<Student> selectAllStudents() {
        String sql = "" +
                "SELECT " +
                " student_id," +
                " first_Name," +
                " last_Name," +
                " email," +
                " gender " + // добавлен пробел
                "FROM student"; // исправлено на " FROM student"

        return jdbcTemplate.query(sql, mapStudentFromDb());
    }

    private static RowMapper<Student> mapStudentFromDb() {
        return (resultSet, i) -> {
            String studentIdStr = resultSet.getString("student_id");
            UUID studentId = UUID.fromString(studentIdStr);
            String firstName = resultSet.getString("first_Name"); // исправлено
            String lastName = resultSet.getString("last_Name");
            String email = resultSet.getString("email"); // исправлено
            String genderStr = resultSet.getString("gender").toUpperCase();
            Student.Gender gender = Student.Gender.valueOf(genderStr);
            return new Student(
                    studentId,
                    firstName, // исправлено
                    lastName,
                    email,
                    gender);
        };
    }
}