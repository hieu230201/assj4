create table users
(
    id       int auto_increment
        primary key,
    fullname varchar(255)      not null,
    email    varchar(255)      not null,
    password varchar(255)      not null,
    admin    tinyint default 0 not null,
    isActive tinyint           not null,
    constraint email_UNIQUE
        unique (email)
)
    collate = utf8_unicode_ci;

INSERT INTO ass.users (id, fullname, email, password, admin, isActive) VALUES (4, 'Nguyễn Trung Hiếu', 'hieuntph15836@fpt.edu.vn', '123', 1, 1);
INSERT INTO ass.users (id, fullname, email, password, admin, isActive) VALUES (7, 'Luu Van Ha 123', 'hieudeptrai15836@fpt.edu.vn', '123', 0, 1);
INSERT INTO ass.users (id, fullname, email, password, admin, isActive) VALUES (8, 'Nguyen Thanh Tung', 'a15836@fpt.edu.vn', '123', 0, 0);
INSERT INTO ass.users (id, fullname, email, password, admin, isActive) VALUES (16, 'Nguyễn Trung Hiếu', '5836@fpt.edu.vn', '123', 1, 1);
INSERT INTO ass.users (id, fullname, email, password, admin, isActive) VALUES (17, 'hieu', 'hieuop130316@gmail.com', '123', 1, 1);
INSERT INTO ass.users (id, fullname, email, password, admin, isActive) VALUES (18, 'Anh Hiếu năm bờ one', 'sipdeptrai23@gmail.com', '123', 1, 0);
INSERT INTO ass.users (id, fullname, email, password, admin, isActive) VALUES (19, 'HieuPro', 'ph17446@fpt.edu.vn', '321', 0, 0);
INSERT INTO ass.users (id, fullname, email, password, admin, isActive) VALUES (20, 'Nguyễn Bảo Ngọc', 'ngocxinh@gmail.com', '123', 1, 0);
INSERT INTO ass.users (id, fullname, email, password, admin, isActive) VALUES (21, 'Nguyen Bao Ngoc', 'aaaa@gmail.com', '123', 0, 1);
INSERT INTO ass.users (id, fullname, email, password, admin, isActive) VALUES (22, 'Trung Kien', 'kien@gmail.com', '222', 1, 1);
INSERT INTO ass.users (id, fullname, email, password, admin, isActive) VALUES (23, 'Hiếu Pro 12', 'aHieu6@fpt.edu.vn', '123', 0, 0);
INSERT INTO ass.users (id, fullname, email, password, admin, isActive) VALUES (24, 'a', 'a@gmail.com', '123', 1, 0);
