import fetch from 'unfetch';



const checkStatus = async (response) => {
    if (response.ok) {
        return response;
    } else {
        const error = new Error(`Ошибка ${response.status}: ${response.statusText}`);
        error.response = response;

        try {
            const errorData = await response.json();
            error.error = errorData;
        } catch (jsonError) {
            console.error('Ошибка при парсинге JSON:', jsonError);
            error.error = { message: 'Не удалось получить данные об ошибке' };
        }
        return Promise.reject(error); // Отклоняем промис с ошибкой
    }
};



// const checkStatus = response => {
//     if (response.ok) {
//         return response;
//     } else {
//         let error = new Error(response.statusText);
//         error.response = response;

//         // Возвращаем промис, который разрешается с объектом ошибки
//         return response.json().then(e => {
//             error.error = e;
//             return Promise.reject(error);
//         });
//     }
// };


export const getAllStudents = () =>
    fetch('api/students')
        .then(checkStatus);

export const addNewStudent = student =>
    fetch ('api/students',{
        headers: {
            'Content-Type': 'application/json'

        },
        method: 'POST',
        body: JSON.stringify(student)
    }).then(checkStatus);