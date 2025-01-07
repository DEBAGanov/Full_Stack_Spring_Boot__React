import React from "react";
import Container from "./Container";
import { Avatar, Button } from "antd";
import "./Footer.css";

const Footer = (props) => {
    console.log(props.numbersOfStudents); // Для отладки

    return (
        <div className="footer">
            <Container>
                {props.numbersOfStudents !== undefined ? (
                    <Avatar
                        style={{ backgroundColor: '#f56a00', marginRight: '5px' }}
                        size='large'>
                        {props.numbersOfStudents}
                    </Avatar>
                ) : null}
                <Button onClick={()=>props.handleAddStudentClickEvent()} type="primary">Add new Student +</Button>
            </Container>
        </div>
    );
};

export default Footer;