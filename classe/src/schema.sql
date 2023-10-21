-- obs:Não será possível criar um banco usando o elephant sql, apenas crio as tabelas
-- obs2:lembrar de criar "start": "node ./src/index.js", além do dev no package.json

-- drop DATABASE if exists market_cubos;

-- CREATE DATABASE market_cubos;

-- ALTER DATABASE  marketplace RENAME to market_cubos;

create table
    usuarios (
        id serial primary key,
        nome text not null,
        nome_loja text not null,
        email text not null unique,
        senha text not null
    );

create table
    produtos (
        id serial primary key,
        usuario_id integer not null,
        nome text not null,
        estoque integer not null,
        preco integer not null,
        categoria text,
        descricao text,
        imagem text,
        foreign key (usuario_id) references usuarios (id)
    );