create database spring_rest_db;

use spring_rest_db;

create table users
(
    id       int          not null primary key auto_increment,
    username varchar(255) not null,
    password varchar(255) not null
);

create table todo
(
    id        int          not null primary key auto_increment,
    title     varchar(255) not null,
    confirmed boolean      not null,
    user_id   int          not null,
    foreign key (user_id) references users (id)
);