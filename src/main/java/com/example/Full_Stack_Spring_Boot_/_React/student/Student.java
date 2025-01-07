package com.example.Full_Stack_Spring_Boot_._React.student;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.antlr.v4.runtime.misc.NotNull;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

import java.util.UUID;

public class Student {


    private final UUID studentId;

    @NotBlank
    private final String firstName;

    @NotBlank
    private final String lastName;

    @NotBlank
    @Email
    private final String email;

    @NotNull
    private final Gender gender;

    public Student(@JsonProperty("studentId") UUID studentId,
                   @JsonProperty("firstName") String firstName,
                   @JsonProperty("lastName") String lastName,
                   @JsonProperty ("email") String email,
                   @JsonProperty ("gender") Gender gender) {
        this.studentId = studentId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.gender = gender;
    }

    public UUID getStudentId() {
        return studentId;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getEmail() {
        return email;
    }

    public Gender getGender() {
        return gender;
    }

    public enum Gender {
        MALE, FEMALE
    }

    @Override
    public String toString() {
        return "Student{" +
                "studentId=" + studentId +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", gender=" + gender +
                '}';
    }
}
