import fetch from 'unfetch';

export const getAllStudents = () => fetch('http://localhost:8080/api/students');

// export default getAllStudents; // Экспорт по умолчанию
