DROP DATABASE IF EXISTS jhm4_test;
CREATE DATABASE jhm4_test;
USE jhm4_test;

CREATE TABLE Class ( 
    class_id INT PRIMARY KEY, 
    class_name VARCHAR(50) NOT NULL, 
    grade INT NOT NULL 
);

CREATE TABLE Student ( 
    student_id INT PRIMARY KEY, 
    name VARCHAR(50) NOT NULL, 
    gender VARCHAR(10), 
    birthday DATE, 
    class_id INT, 
    FOREIGN KEY (class_id) REFERENCES Class(class_id) 
);

CREATE TABLE Teacher ( 
    teacher_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL, 
    gender VARCHAR(10), 
    department VARCHAR(50) 
);

CREATE TABLE Course ( 
    course_id INT PRIMARY KEY, 
    course_name VARCHAR(100) NOT NULL, 
    credit INT, 
    department VARCHAR(50), 
    teacher_id INT, 
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id) 
);

CREATE TABLE Student_Course ( 
    student_id INT, 
    course_id INT, 
    enrollment_date DATE DEFAULT (CURRENT_DATE), 
    PRIMARY KEY (student_id, course_id), 
    FOREIGN KEY (student_id) REFERENCES Student(student_id), 
    FOREIGN KEY (course_id) REFERENCES Course(course_id) 
);

CREATE TABLE Class_Teacher (
    class_id INT, 
    teacher_id INT, 
    PRIMARY KEY (class_id, teacher_id), 
    FOREIGN KEY (class_id) REFERENCES Class(class_id), 
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id) 
);


INSERT INTO Class (class_id, class_name, grade) VALUES 
(1, '4A', 4), 
(2, '4B', 4); 

INSERT INTO Student (student_id, name, gender, birthday, class_id) VALUES 
(1, '陳大文', 'M', '2006-02-15', 1), 
(2, '李小明', 'M', '2005-11-23', 2),
(3, '王美麗', 'F', '2006-05-30', 1); 
INSERT INTO Teacher (teacher_id, name, gender, department) VALUES 
(1, '張志明', 'M', '數學系'), 
(2, '林美華', 'F', '自然科學系'), 
(3, '李國強', 'M', '語言系'); 

INSERT INTO Course (course_id, course_name, credit, department, teacher_id) VALUES 
(101, '數學', 4, '數學系', 1), 
(102, '物理', 3, '自然科學系', 2), 
(103, '英文', 3, '語言系', 3); 
INSERT INTO Student_Course (student_id, course_id) VALUES 
(1, 101),
(1, 102)
(2, 101),
(2, 103),
(3, 102); 

INSERT INTO Class_Teacher (class_id, teacher_id) VALUES 
(1, 2), 
(2, 1); 
