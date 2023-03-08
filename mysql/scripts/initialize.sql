create table users (
    id int not null auto_increment,
    username varchar(255) not null,
    unique (username),
    primary key (id)
);

insert into users (username) values ('user_1');
insert into users (username) values ('user_2');
insert into users (username) values ('user_3');
insert into users (username) values ('user_4');
insert into users (username) values ('user_5');
insert into users (username) values ('user_6');
insert into users (username) values ('user_7');
insert into users (username) values ('user_8');
insert into users (username) values ('user_9');
insert into users (username) values ('user_10');

create table contact_info (
    id int not null auto_increment,
    email varchar(255) not null,
    phone varchar(255),
    user_id int not null,
    unique (user_id),
    unique (email),
    unique (phone),
    foreign key (user_id) references users(id),
    primary key (id)
);

insert into contact_info (email, phone, user_id) values ('user_1@gmail.com', null, 1);
insert into contact_info (email, phone, user_id) values ('user_2@gmail.com', null, 2);
insert into contact_info (email, phone, user_id) values ('user_3@gmail.com', null, 3);
insert into contact_info (email, phone, user_id) values ('user_4@gmail.com', null, 4);
insert into contact_info (email, phone, user_id) values ('user_5@gmail.com', null, 5);
insert into contact_info (email, phone, user_id) values ('user_6@gmail.com', null, 6);
insert into contact_info (email, phone, user_id) values ('user_7@gmail.com', null, 7);
insert into contact_info (email, phone, user_id) values ('user_8@gmail.com', null, 8);
insert into contact_info (email, phone, user_id) values ('user_9@gmail.com', null, 9);
insert into contact_info (email, phone, user_id) values ('user_10@gmail.com', null, 10);