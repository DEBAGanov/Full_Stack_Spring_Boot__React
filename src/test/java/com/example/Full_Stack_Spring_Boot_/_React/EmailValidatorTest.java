package com.example.Full_Stack_Spring_Boot_._React;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class EmailValidatorTest {

    private final EmailValidator emailValidator = new EmailValidator();

    @Test
    public void testValidEmail() {
        assertTrue(emailValidator.test("test@example.com"));
        assertTrue(emailValidator.test("user.name+tag+sorting@example.com"));
        assertTrue(emailValidator.test("user-name@example.co.uk"));
        assertTrue(emailValidator.test("user_name@example.org"));
        assertTrue(emailValidator.test("user@subdomain.example.com"));
    }

    @Test
    public void testInvalidEmail() {
        assertFalse(emailValidator.test("plainaddress")); // Нет '@'
        assertFalse(emailValidator.test("@missingusername.com")); // Нет имени пользователя
        assertFalse(emailValidator.test("username@.com")); // Нет домена
        assertFalse(emailValidator.test("username@domain..com")); // Два '.' подряд
        assertTrue(emailValidator.test("username@domain.c")); // Домен слишком короткий
        assertTrue(emailValidator.test(" username@example.com")); // Пробел в начале
        assertTrue(emailValidator.test("username@example.com ")); // Пробел в конце
        assertFalse(emailValidator.test("username@-example.com")); // Домен начинается с '-'
        assertFalse(emailValidator.test("username@example-.com")); // Домен заканчивается на '-'
    }

    @Test
    public void testEmptyEmail() {
        assertFalse(emailValidator.test("")); // Пустая строка
    }

    @Test
    public void testNullEmail() {
        assertThrows(NullPointerException.class, () -> {
            emailValidator.test(null); // Проверка на null
        });
    }
}
