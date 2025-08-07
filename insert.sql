insert into usuario (nome, email) values
('Penelope', 'penelope@email.com'),
('Odisseu', 'odisseu@email.com');

insert into artistas (nome) values
('Chico Buarque'),
('Sabrina Carpinter');

insert into musicas (titulo, duracao_segundos, artista_id) values
('Valsinha', 146, 1),
('Manchild', 213, 2);

insert into playlists (usuario_id, nome) values
(1, 'Minhas favoritas'),
(2, 'Chorar no banho');

insert into playlist_musicas (playlist_id, musica_id, ordem) values
(1,1,1),
(2,2,1);

select m.titulo, a.nome as artistas
from musicas m
join artistas a on m.artista_id = a.artista_id
where a.nome = 'Chico Buarque';

SELECT p.nome, COUNT(pm.musica_id) AS total_musicas
FROM playlists p
LEFT JOIN playlist_musicas pm ON p.playlist_id = pm.playlist_id
WHERE p.usuario_id = 1
GROUP BY p.playlist_id;

