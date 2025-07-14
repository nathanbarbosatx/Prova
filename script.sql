create database LivraTech;
use LivraTech;

create table Autor(
idAutor  int primary key unique not null,
Nome  varchar(50) not null,
Descricao varchar(125) not null 
);

create table Genero(
idGenero int primary key unique not null,
Nome varchar(100)
);

create table Livro(
idCadastro int primary key not null,
FKautor int,
constraint fklivroautor foreign key
(FKautor) references Autor(idAutor),
FKgenero int,
constraint fklivrogenero foreign key
(FKgenero) references Genero(idGenero),
Titulo varchar(100) not null,
QtdEstoque int,
PcrCompra decimal(4,2) not null ,
PcrVenda decimal(4,2) not null
);

-- inserindo o genero

insert into Genero values 
(1,'horror'),
(2,'romance'),
(3,'poesia'),
(4,'fantasia');



