import React, { Component } from 'react';
import './App.css';
import { getAllStudents } from './client';
import { errorNotification } from './Notification';
import { Table, Avatar, Spin, Modal, Empty } from 'antd';
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
                // console.error("Ошибка при получении студентов:", error);
                // console.log(error.error.timestamp);
                // errorNotification(error.error.message);
                console.log("тут ошибка");
                // const message = error.error.status;
                const message = error.message;
                const description = "Не удалось загрузить список";
                errorNotification(message, description);
                this.setState({ isFetching: false });
            });
    };

    render() {
        const { students, isFetching, isAddStudentModalVisible } = this.state;
        const commonElements = () => (
            <div>
                <Modal
                    title='Add new Student'
                    open={isAddStudentModalVisible}
                    onOk={this.closeAddStudentModal}
                    onCancel={this.closeAddStudentModal}
                    width={1000}>

                    <AddStudentForm
                    onSuccess={() => {
                            this.closeAddStudentModal();
                            this.fetchStudents();
                            console.log("Форма отправлена")
                        }}
                    onFailure={(error) => {
                        console.log(JSON.stringify(error));
                        const message = error.error.message;
                        const description = error.message;
                        errorNotification(message, description);
                        console.log("Ошибка при отправке формы");
                    }}



                        />
                </Modal>
                <Footer numbersOfStudents={students.length}
                    handleAddStudentClickEvent={this.openAddStudentModal}/>
            </div>

        )

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
                    {commonElements()}
                </Container>
            );
        }

        // Если студентов нет, отображаем сообщение
        return(
        <Container>
            <Empty description={
                <h1>No Data List found</h1>
                }/>
                {commonElements()}
        </Container>
        );


    }
}

export default App;