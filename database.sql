create database belajar_laravel_database;

create table categories (
	id varchar(100) not null primary key,
	name varchar(100) not null,
	description text,
	created_at timestamp
) engine = InnoDB;

show databases;

desc categories;

create table counters(
id varchar(100) not null primary key,
counter int not null default 0
) engine InnoDB;

insert into counters (id,counter) values ("Sample", 0);

select * from counters;

drop table products;

create table products(
id varchar(100) not null primary key,
name varchar(100) not null,
description text null,
price int not null,
category_id varchar(100) not null,
create_at timestamp not null default current_timestamp,
constraint fk_category_id foreign key (category_id) references categories (id)
) engine InnoDB;

create table products
(
    id          varchar(100) not null primary key,
    name        varchar(100) not null,
    description text         null,
    price       int          not null,
    category_id varchar(100) not null,
    created_at  timestamp    not null default current_timestamp,
    constraint fk_category_id foreign key (category_id) references categories (id)
) engine innodb;

drop table products;

drop table categories;

drop table counters;

show tables;

select * from migrations;