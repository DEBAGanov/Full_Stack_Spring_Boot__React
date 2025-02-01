package com.example.Full_Stack_Spring_Boot_._React.student;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public class StudentDataAccessService {

    private final JdbcTemplate jdbcTemplate;

    public StudentDataAccessService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    List<Student> selectAllStudents() {
        String sql = "" +
                "SELECT " +
                " student_id," +
                " first_Name," +
                " last_Name," +
                " email," +
                " phone_number," +
                " gender " +
                "FROM student";

        return jdbcTemplate.query(sql, mapStudentFromDb());
    }

    public int insertNewStudent(UUID newStudentId, Student student) {
        // Проверка на null
        if (newStudentId == null || student == null) {
            throw new IllegalArgumentException("Student ID and Student object must not be null");
        }

        String sql = "INSERT INTO student (" +
                " student_id, " +
                " first_name, " +
                " last_name, " +
                " email, " +
                " phone_number," +
                " gender ) " +
                "VALUES (?, ?, ?, ?, ?, ?::gender)";

        try {
            return jdbcTemplate.update(
                    sql,
                    newStudentId,
                    student.getFirstName(),
                    student.getLastName(),
                    student.getEmail(),
                    student.getPhoneNumber(),
                    student.getGender().name().toUpperCase());
        } catch (DataAccessException e) {
            // Логирование ошибки
            System.err.println("Error inserting student: " + e.getMessage());
            throw e; // или обработать ошибку по-другому
        }
    }

    private static RowMapper<Student> mapStudentFromDb() {
        return (resultSet, i) -> {
            String studentIdStr = resultSet.getString("student_id");
            UUID studentId = UUID.fromString(studentIdStr);
            String firstName = resultSet.getString("first_Name"); // исправлено
            String lastName = resultSet.getString("last_Name");
            String email = resultSet.getString("email"); // исправлено
            String phoneNumber = resultSet.getString("phone_Number"); // исправлено
            String genderStr = resultSet.getString("gender").toUpperCase();
            Student.Gender gender = Student.Gender.valueOf(genderStr);
            return new Student(
                    studentId,
                    firstName,
                    lastName,
                    email,
                    phoneNumber,
                    gender);
        };
    }

    boolean isEmailTaken(String email) {
        String sql = "" +
                "SELECT EXISTS ( " +
                " SELECT 1" +
                " FROM student " +
                " WHERE email = ?" +
                ")";
        Boolean b = jdbcTemplate.queryForObject(
                sql,
                new Object[] { email },
                (resultSet, i) -> resultSet.getBoolean(1));
        return b;
    }
}