SELECT datname FROM pg_database;

SELECT 'CREATE DATABASE amicao_db' WHERE NOT EXISTS (SELECT FROM pg_database  WHERE datname = 'amicao_db')\gexec

\c amicao_db;
CREATE TABLE IF NOT EXISTS tb_pets(

    _id varchar(600) not null primary key unique,
    nome varchar(100) not null,
    raca_pai varchar(20),
    raca_mae varchar(20),
    idade int not null,
    _status varchar(20) not null,
    comportamento varchar(500) not null,
    obs varchar(100)


);

CREATE TABLE IF NOT EXISTS tb_admin(

    _id varchar(600) not null primary key unique,
    username varchar(100) not null,
    passwd varchar(20)

);

CREATE TABLE IF NOT EXISTS tb_requisicoes(

    _id varchar(600) not null primary key unique,
    nome varchar(100) not null,
    telefone varchar(20) not null,
    email varchar(100) not null, 
    _timestamp varchar(100) not null,
    doc_num int not null,
    endereco varchar(100) not null,
    cep int not null,
    status_req varchar(20)


);

CREATE TABLE IF NOT EXISTS tb_org(

    _id varchar(600) not null primary key unique,
    cnpj varchar(20) not null,
    contato varchar(20) not null,
    endereco varchar(100) not null,
    cep int


);
