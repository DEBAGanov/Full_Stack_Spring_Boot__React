import React from "react";
import { Formik, Form, Field, ErrorMessage } from "formik";
import { Input, Button, Tag } from "antd";
import { addNewStudent } from "../client";

const inputBottomMargin = { margin: "10px" };
const TagStyle = { backgroundColor: "#f60", color: "black", margin: "5px" };

const AddStudentForm = (props) => {
    return (
        <Formik
            initialValues={{ firstName: '', lastName: '', email: '', phoneNumber: '', gender: '' }}
            validate={values => {
                const errors = {};
                if (!values.firstName) {
                    errors.firstName = 'First Name is Required';
                }
                if (!values.lastName) {
                    errors.lastName = 'Last Name is Required';
                }
                if (!values.email) {
                    errors.email = 'Email Required';
                } else if (
                    !/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$/i.test(values.email)
                ) {
                    errors.email = 'Invalid email address';
                }
                if (!values.gender) {
                    errors.gender = 'Gender Required';
                } else if (!['MALE', 'male', 'FEMALE', 'female'].includes(values.gender)) {
                    errors.gender = 'Gender must be (MALE, male, FEMALE, female)';
                }

                return errors;
            }}
            onSubmit={(student, { setSubmitting }) => {
                addNewStudent(student)
                    .then(() => {
                        // alert(JSON.stringify(student))]
                        props.onSuccess();
                    })
                    .catch(errors => {
                        props.onFailure(errors);
                        //console.error("Ошибка при добавлении студента:", error);
                    })
                    .finally(() => {
                        setSubmitting(false);
                    });
            }}
        >
            {({ isSubmitting }) => (
                <Form>
                    <div>
                        <label htmlFor="firstName">First Name </label>
                        <Field name="firstName">
                            {({ field }) => (
                                <Input
                                    {...field}
                                    style={inputBottomMargin}
                                    placeholder="First Name, E.g. John"
                                />
                            )}
                        </Field>
                        <ErrorMessage name="firstName">
                            {msg => <Tag style={TagStyle}>{msg}</Tag>}
                        </ErrorMessage>
                    </div>
                    <div>
                        <label htmlFor="lastName">Last Name </label>
                        <Field name="lastName">
                            {({ field }) => (
                                <Input
                                    {...field}
                                    style={inputBottomMargin}
                                    placeholder="Last Name, E.g. Smith"
                                />
                            )}
                        </Field>
                        <ErrorMessage name="lastName">
                            {msg => <Tag style={TagStyle}>{msg}</Tag>}
                        </ErrorMessage>
                    </div>
                    <div>
                        <label htmlFor="email">Email </label>
                        <Field name="email">
                            {({ field }) => (
                                <Input
                                    {...field}
                                    style={inputBottomMargin}
                                    placeholder="Email, E.g. example@mail.com"
                                />
                            )}
                        </Field>
                        <ErrorMessage name="email">
                            {msg => <Tag style={TagStyle}>{msg}</Tag>}
                        </ErrorMessage>
                    </div>
                    <div>
                        <label htmlFor="phoneNumber">Phone </label>
                        <Field name="phoneNumber">
                            {({ field }) => (
                                <Input
                                    {...field}
                                    style={inputBottomMargin}
                                    placeholder="phone number, e.g. +7234567890"
                                />
                            )}
                        </Field>
                        <ErrorMessage name="phoneNumber">
                            {msg => <Tag style={TagStyle}>{msg}</Tag>}
                        </ErrorMessage>
                    </div>
                    <div>
                        <label htmlFor="gender">Gender </label>
                        <Field name="gender">
                            {({ field }) => (
                                <Input
                                    {...field}
                                    style={inputBottomMargin}
                                    placeholder="Gender, e.g. Male or Female"
                                />
                            )}
                        </Field>
                        <ErrorMessage name="gender">
                            {msg => <Tag style={TagStyle}>{msg}</Tag>}
                        </ErrorMessage>
                    </div>
                    <Button type="primary" htmlType="submit" disabled={isSubmitting}>
                        Submit
                    </Button>
                </Form>
            )}
        </Formik>
    );
}

export default AddStudentForm;
