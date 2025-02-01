import React, { useState } from 'react';
import { Formik } from 'formik';
import { Input, Button, Tag } from 'antd';
import { addNewStudent } from '../client';

const AddStudentForm = ({ onSuccess, onFailure }) => {
    const [submitting, setSubmitting] = useState(false);

    const initialValues = {
        firstName: '',
        lastName: '',
        email: '',
        phoneNumber: '',
        gender: ''
    }

    return (
        <Formik
            initialValues={initialValues}
            validate={values => {
                const errors = {};

                if (!values.firstName) {
                    errors.firstName = 'First Name Required'
                }

                if (!values.lastName) {
                    errors.lastName = 'Last Name Required'
                }

                if (!values.email) {
                    errors.email = 'Email Required';
                } else if (
                    !/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$/i.test(values.email)
                ) {
                    errors.email = 'Invalid email address';
                }

                if (!values.phoneNumber) {
                    errors.phoneNumber = 'Phone Number Required';
                } else if (!/^\+?[1-9]\d{1,14}$/.test(values.phoneNumber)) {
                    errors.phoneNumber = 'Invalid phone number format';
                }

                if (!values.gender) {
                    errors.gender = 'Gender Required';
                } else if (!['MALE', 'FEMALE'].includes(values.gender)) {
                    errors.gender = 'Gender must be (MALE or FEMALE)';
                }

                return errors;
            }}
            onSubmit={(values, { setSubmitting }) => {
                setSubmitting(true);
                addNewStudent(values)
                    .then(() => {
                        onSuccess();
                    })
                    .catch(err => {
                        onFailure(err);
                    })
                    .finally(() => {
                        setSubmitting(false);
                    });
            }}
        >
            {({
                values,
                errors,
                touched,
                handleChange,
                handleBlur,
                handleSubmit,
                isSubmitting,
                submitForm,
                isValid
            }) => (
                <form onSubmit={handleSubmit}>
                    <Input
                        style={{ marginBottom: '5px' }}
                        name="firstName"
                        onChange={handleChange}
                        onBlur={handleBlur}
                        value={values.firstName}
                        placeholder='First Name. E.g John'
                    />
                    {errors.firstName && touched.firstName &&
                        <Tag style={{ marginBottom: '5px' }} color="red">{errors.firstName}</Tag>}

                    <Input
                        style={{ marginBottom: '5px' }}
                        name="lastName"
                        onChange={handleChange}
                        onBlur={handleBlur}
                        value={values.lastName}
                        placeholder='Last Name. E.g Jones'
                    />
                    {errors.lastName && touched.lastName &&
                        <Tag style={{ marginBottom: '5px' }} color="red">{errors.lastName}</Tag>}

                    <Input
                        style={{ marginBottom: '5px' }}
                        name="email"
                        onChange={handleChange}
                        onBlur={handleBlur}
                        value={values.email}
                        placeholder='Email. E.g example@gmail.com'
                    />
                    {errors.email && touched.email &&
                        <Tag style={{ marginBottom: '5px' }} color="red">{errors.email}</Tag>}

                    <Input
                        style={{ marginBottom: '5px' }}
                        name="phoneNumber"
                        onChange={handleChange}
                        onBlur={handleBlur}
                        value={values.phoneNumber}
                        placeholder='Phone Number. E.g +1234567890'
                    />
                    {errors.phoneNumber && touched.phoneNumber &&
                        <Tag style={{ marginBottom: '5px' }} color="red">{errors.phoneNumber}</Tag>}

                    <Input
                        style={{ marginBottom: '5px' }}
                        name="gender"
                        onChange={handleChange}
                        onBlur={handleBlur}
                        value={values.gender}
                        placeholder='Gender. E.g MALE or FEMALE'
                    />
                    {errors.gender && touched.gender &&
                        <Tag style={{ marginBottom: '5px' }} color="red">{errors.gender}</Tag>}

                    <Button
                        onClick={() => submitForm()}
                        type="submit"
                        disabled={isSubmitting | !isValid}>
                        Submit
                    </Button>
                </form>
            )}
        </Formik>
    );
};

export default AddStudentForm;