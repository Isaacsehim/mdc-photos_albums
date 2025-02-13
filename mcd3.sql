1 - SELECT photo.p_id, album.a_titre FROM album
RIGHT JOIN photos_has_albums ON album.a_id = photos_has_albums.a_id
RIGHT JOIN photo ON photos_has_albums.p_id = photo.p_id;

2 - SELECT album.a_titre, photo.p_id FROM album
INNER JOIN photos_has_albums ON album.a_id = photos_has_albums.a_id
INNER JOIN photo ON photos_has_albums.p_id = photo.p_id;

3 - SELECT *, COUNT(album.a_id) FROM utilisateur
LEFT JOIN album ON utilisateur.u_id = album.u_id
GROUP BY utilisateur.u_nom
ORDER BY album.a_id

4 - SELECT album.u_id, utilisateur.u_nom, COUNT(album.a_id) AS total_albums
FROM utilisateur
LEFT JOIN utilisateur_partage_album ON utilisateur.u_id = utilisateur_partage_album.u_id
RIGHT JOIN album ON utilisateur_partage_album.a_id = album.a_id
ORDER BY total_albums;

