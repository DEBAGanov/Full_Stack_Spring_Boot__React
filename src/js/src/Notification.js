import { notification } from 'antd';

const openNotificationWithIcon = (type, message, description) => {
    notification[type]({
        message,
        description,
        placement: 'topLeft',
        duration: 8
    });
};


export default openNotificationWithIcon;

export const successNotification = (message, description) => openNotificationWithIcon('success', message, description);
export const infoNotification = (message, description) => openNotificationWithIcon('info', message, description);
export const warningNotification = (message, description) => openNotificationWithIcon('warning', message, description);
export const errorNotification = (message, description) => openNotificationWithIcon('error', message, description);
