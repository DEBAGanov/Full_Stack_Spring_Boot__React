import React, { Component } from 'react';
import './App.css';
import { getAllStudents } from './client';
import { Table, Avatar, Spin, Modal } from 'antd';
import { LoadingOutlined } from '@ant-design/icons';
import Container from './Container';
import Footer from './Footer';
import AddStudentForm from './forms/AddStudentForm';



const getIndicatorIcon = () => (
    <LoadingOutlined style={{ fontSize: 24 }} spin /> // Настраиваем стиль и добавляем анимацию
);

class App extends Component {
    state = {
        students: [],
        isFetching: false,
        isAddStudentModalVisible: false
    };

    componentDidMount() {
        this.fetchStudents();
    }

    openAddStudentModal = () => {
        this.setState({ isAddStudentModalVisible: true });
    };
    closeAddStudentModal = () => {
        console.log("Закрытие модального окна");
        this.setState({ isAddStudentModalVisible: false });
    };

    fetchStudents = () => {
        this.setState({ isFetching: true });
        getAllStudents()
            .then(res => res.json())
            .then(students => {
                console.log(students);
                this.setState({ students, isFetching: false });
            })
            .catch(error => {
                console.error("Ошибка при получении студентов:", error);
                this.setState({ isFetching: false });
            });
    };

    render() {
        const { students, isFetching, isAddStudentModalVisible } = this.state;

        if (isFetching) {
            return (
                <Container>
                    <Spin indicator={getIndicatorIcon()} />
                </Container>
            );
        }

        // Проверяем, есть ли студенты
        if (students && students.length) {
            const columns = [
                {
                    title: '',
                    key: 'avatar',
                    render: (text, student) => (
                        <Avatar size='large'>
                            {`${student.firstName.charAt(0)}${student.lastName.charAt(0)}`}
                        </Avatar>
                    )
                },
                {
                    title: 'Student ID',
                    dataIndex: 'studentId',
                    key: 'studentId',
                },
                {
                    title: 'First Name',
                    dataIndex: 'firstName',
                    key: 'firstName',
                },
                {
                    title: 'Last Name',
                    dataIndex: 'lastName',
                    key: 'lastName',
                },
                {
                    title: 'Email',
                    dataIndex: 'email',
                    key: 'email',
                },
                {
                    title: 'Gender',
                    dataIndex: 'gender',
                    key: 'gender',
                },
            ];

            return (
                <Container>

                    <Table
                    style ={{ marginBottom: "100px" }}
                    dataSource={students}
                    columns={columns}
                    pagination={false}
                    rowKey="studentId"/>

                    <Modal
                    title='Add new Student'
                    visible={isAddStudentModalVisible}
                    onOk={this.closeAddStudentModal}
                    onCancel={this.closeAddStudentModal}
                    width={1000}>

                    <AddStudentForm onSuccess={() => {
                            this.closeAddStudentModal();
                            this.fetchStudents();
                            console.log("Форма отправлена")
                        }} />
                    </Modal>
                    <Footer numbersOfStudents={students.length}
                    handleAddStudentClickEvent={this.openAddStudentModal}/>

                </Container>
            );
        }

        // Если студентов нет, отображаем сообщение
        return <h1>No Student List found</h1>;
    }
}

export default App;