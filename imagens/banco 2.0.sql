create database trabalho_mateus
default character set utf8mb4
default collate utf8mb4_general_ci;

create table usuario (
usuario_id int auto_increment primary key,
nome varchar(100) not null,
email varchar(100) unique not null
);

create table artistas (
artista_id int auto_increment primary key,
nome varchar(100) not null
);

create table musicas (
musica_id int auto_increment primary key,
titulo varchar(100) not null,
duracao_segundos int,
artista_id int not null,
foreign key (artista_id) references artistas(artista_id)
);

create table playlists (
playlist_id int auto_increment primary key,
usuario_id int not null,
nome varchar(100) not null,
foreign key (usuario_id) references usuario(usuario_id)
);

create table playlist_musicas (
playlist_id int not null,
musica_id int not null,
ordem int,
primary key (playlist_id, musica_id),
foreign key (playlist_id) references playlists(playlist_id),
foreign key(musica_id) references musicas(musica_id)
);