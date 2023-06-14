
create database aprendiendojsf;

use aprendiendojsf;

select * from Rol;

create table Rol
(
	id int primary key not null auto_increment,
	nombre varchar(30) not null,
	descripcion varchar(100),
	estado tinyint(1)
);

select * from Usuario;

create table Usuario
(
	id int primary key not null auto_increment,
	rol_id int not null,
	usuario varchar(30) not null,
	clave varchar(32) not null,
	email varchar(60),
	estado tinyint(1),
	usuariocreacion varchar(25),
	fechacreacion datetime,
	usuariomodificacion varchar(25),
	fechamodificacion datetime,
	constraint fk_rol foreign key(rol_id)
	references Rol(id)
);

select * from Menu;

create table Menu
(
	id int primary key not null auto_increment,
	menu_id int,
	nivel int,
	orden int,
	nombre varchar(80),
	url varchar(120),
	icono varchar(30),
	estado tinyint(1)
);

select * from Rolmenu;

create table Rolmenu
(
	id int primary key not null auto_increment,
	rol_id int,
	menu_id int,
	foreign key(rol_id)
	references Rol(id),
	foreign key(menu_id)
	references Menu(id)
);
