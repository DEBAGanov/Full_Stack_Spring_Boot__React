import React, { Component } from "react";
import { Formik, Form, Field, ErrorMessage } from "formik";
import { Input, Button, Tag} from "antd";
import { addNewStudent } from "../client"



const inputBottomMargin = { margin: "10px" };
const TagStyle = { backgroundColor : "#f60", color: "black", margin: "5px" };

class AddStudentForm extends Component {
    render() {
        return (
            <Formik
                initialValues={{ firstName: '', lastName: '', email: '', gender: '' }}
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
                        errors.gender = ' Gender Required';
                    } else if (!['MALE', 'male', 'FEMALE', 'female'].includes(values.gender)){
                        errors.gender = 'Gender must be (MALE, male, FEMALE, female)';
                    }

                    return errors;
                }}
                onSubmit={(student, { setSubmitting }) => {
                    addNewStudent(student)
                        .then(() => {
                            alert(JSON.stringify(student));
                            setSubmitting(false);
                        })
                        .catch(error => {
                            console.error("Ошибка при добавлении студента:", error);
                            alert("Ошибка при добавлении студента"); // Обработка ошибки
                            setSubmitting(false);
                        });
                }}
            >

                {({ isSubmitting }) => (
                    <Form>
                            <div>
                                <label htmlFor="firstName">First Name </label>

                                <Field name="firstName">
                                    {({ field, form }) => (
                                        <Input
                                            {...field}
                                            style={inputBottomMargin}
                                            placeholder="First Name, E.g. John"
                                            onChange={field.onChange}
                                            onBlur={field.onBlur}
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
                                    {({ field, form }) => (
                                        <Input
                                            {...field}
                                            style={inputBottomMargin}
                                            placeholder="Last Name,E.g. Smit"
                                            onChange={field.onChange}
                                            onBlur={field.onBlur}
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
                                    {({ field, form }) => (
                                        <Input
                                            {...field}
                                            style={inputBottomMargin}
                                            placeholder="Email, E.g. example@hmail.cm"
                                            onChange={field.onChange}
                                            onBlur={field.onBlur}
                                        />
                                    )}
                                </Field>
                                <ErrorMessage name="email">
                                    {msg => <Tag style={TagStyle}>{msg}</Tag>}
                                </ErrorMessage>
                            </div>
                            <div>
                                <label htmlFor="gender">Gender </label>
                                <Field name="gender">
                                    {({ field, form }) => (
                                        <Input
                                            {...field}
                                            style={inputBottomMargin}
                                            placeholder="Gender, e.g. Male or Female"
                                            onChange={field.onChange}
                                            onBlur={field.onBlur}
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
}

export default AddStudentForm;