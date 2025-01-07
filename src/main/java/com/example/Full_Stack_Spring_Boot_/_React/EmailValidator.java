package com.example.Full_Stack_Spring_Boot_._React;

import org.springframework.stereotype.Component;
import java.util.function.Predicate;
import java.util.regex.Pattern;

@Component
public class EmailValidator implements Predicate<String> {

    // Regular expression for validating email addresses
    private static final String EMAIL_REGEX =
            "[a-zA-Z0-9_.]+@[a-zA-Z0-9]+.[a-zA-Z]{2,3}[.] {0,1}[a-zA-Z]+";

    private static final Predicate<String> IS_EMAIL_VAlID = Pattern.compile(
            EMAIL_REGEX, Pattern.CASE_INSENSITIVE).asPredicate();

    @Override
    public boolean test(String email) {
        return IS_EMAIL_VAlID.test(email);
    }
}
