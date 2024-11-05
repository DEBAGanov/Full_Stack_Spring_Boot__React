// import React, { Component, useEffect, useState } from 'react';
// import { Table, Avatar, Spin, Icon } from 'antd';

// const StudentList = () => {
//     const [students, setStudents] = useState([]);
//     const [loading, setLoading] = useState(true);
//     const [error, setError] = useState(null);


//     useEffect(() => {
//         const fetchStudents = async () => {
//             try {
//                 const response = await fetch('http://localhost:8080/api/student');
//                 if (!response.ok) {
//                     throw new Error('Network response was not ok');
//                 }
//                 const data = await response.json();
//                 setStudents(data);
//             } catch (error) {
//                 setError(error.message);
//             } finally {
//                 setLoading(false);
//             }
//         };

//         fetchStudents();
//     }, []);

//     if (loading) {
//         // return <div>Loading...</div>;
//         return <div>Loading..</div>;
//     }

//     if (error) {
//         return <div>Error: {error}</div>;
//     }

//     class App extends Component {
//         state = {
//             loading: true,
//             error: null,
//             students: [],
//         };
//     }




//     const columns = [
//         {
//             title:'',
//             key: 'avatar',
//             render: (text, student) => (
//             <Avatar size = 'large'>
//             {`${student.firstName.charAt(0)}${student.lastName.charAt(0)}`}
//             </Avatar>
//             )
//         },
//         {
//             title: 'Student ID',
//             dataIndex: 'studentId',
//             key: 'studentId',
//         },
//         {
//             title: 'First Name',
//             dataIndex: 'firstName',
//             key: 'firstName',
//         },
//         {
//             title: 'Last Name',
//             dataIndex: 'lastName',
//             key: 'lastName',
//         },
//         {
//             title: 'Email',
//             dataIndex: 'email',
//             key: 'email',
//         },
//         {
//             title: 'Gender',
//             dataIndex: 'gender',
//             key: 'gender',
//         },
//     ];

//     return (
//         <div>
//             <h1>Student List</h1>
//             <Table dataSource={students} columns={columns} rowKey="id" />
//         </div>
//     );
// };

// export default StudentList;