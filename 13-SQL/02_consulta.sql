# Consultar todos los registros
SELECT * FROM pokemons;

# Consultar un solo campo
SELECT name FROM pokemons;

# Consultar varios campos
SELECT name, speed FROM pokemons;

# Consultar 'Donde' igual = a
SELECT type FROM pokemons WHERE type = 'agua';

# Consultar 'Donde' Diferente <>
SELECT type FROM pokemons WHERE type <> 'agua';

# Consultar valores distintos
SELECT DISTINCT type FROM pokemons;

# Consultar varios valores
SELECT * FROM pokemons WHERE type = 'electrico' OR type = 'fuego';
SELECT * FROM pokemons WHERE strength >1000;

# Consulta 'y' 
SELECT *
    -> FROM pokemons
    -> WHERE type = 'agua' AND speed > 80;
# Consulta BETWEEN
SELECT * FROM pokemons WHERE stamina BETWEEN 200 AND 300;

# Consultar de forma ascendente
SELECT * FROM pokemons ORDER BY strength;
SELECT * FROM pokemons ORDER BY strength ASC;

# Consultar de forma Descendente
SELECT * FROM pokemons ORDER BY strength DESC;
SELECT * FROM pokemons WHERE speed > 100 ORDER BY speed DESC;

# Limite Y OFFSET
SELECT * FROM pokemons LIMIT 10;
SELECT * FROM pokemons LIMIT 5 OFFSET 9;
SELECT * FROM pokemons LIMIT 10, 5;

# Buscar (LIKE)
SELECT *
FROM pokemons
WHERE type
LIKE "A%";

# Mostrar resultados que terminen con"l"
SELECT *
FROM pokemons
WHERE type
LIKE "%L";

# Mostrar resultados que contenga con"ma"
SELECT *
FROM pokemons
WHERE name
LIKE "%ma%";

# Mostrar resultados que contenga con"pikachu"
SELECT *
FROM pokemons
WHERE name
LIKE "p_k_c_u";

# Mostrar resultados que NO contenga con"ma"
SELECT *
FROM pokemons
WHERE name
NOT LIKE "%MA%";

# Mostrar resultados con varios valores "IN"
SELECT *
FROM pokemons
WHERE type
IN ('Fuego', 'Electrico');

# Mostrar resultados dentro de un rango (BETWEEN)
SELECT * 
FROM pokemons 
WHERE speed 
BETWEEN 90 
AND 100;

# Alias

SELECT t.name AS name_trainer,
	   p.name AS name_pokemon,
	   p.type AS type_pokemon
FROM trainers AS t, pokemons AS p
WHERE t.id = p.trainer_id;

SELECT t.name AS name_trainer,
	   p.name AS name_pokemon,
	   p.type AS type_pokemon
FROM trainers AS t, pokemons AS p
WHERE t.id = p.trainer_id
ORDER BY t.name ASC;

SELECT t.name AS name_trainer,
	   p.name AS name_pokemon,
	   p.type AS type_pokemon
FROM trainers AS t, pokemons AS p
WHERE t.id = p.trainer_id
AND p.type = "agua" OR p.type = "fuego"
ORDER BY t.name ASC;

SELECT COUNT(p.id) AS number_pokemons
FROM pokemons AS p, trainers AS t
WHERE t.id = p.trainer_id
AND t.id = 1;

SELECT t.name AS name_trainer, COUNT(p.id) AS number_pokemons
FROM pokemons AS p,trainers AS t
WHERE t.id = p.trainer_id
GROUP BY t.name;

# INNER JOIN
# name_trainer | name_gym | name_pokemon

SELECT trainers.name AS name_trainer, gyms.name AS name_gym,
pokemons.name AS name_pokemon 
FROM trainers
INNER JOIN gyms
ON trainers.gym_id = gyms.id 
INNER JOIN pokemons
ON pokemons.trainer_id = trainers.id
ORDER BY trainers.name;

# LEFT JOIN
# name_trainer | name_gym | name_pokemon

SELECT trainers.name AS name_trainer, gyms.name AS name_gym,
COUNT(pokemons.id) AS num_pokemon 
FROM trainers
LEFT JOIN gyms
ON trainers.gym_id = gyms.id 
LEFT JOIN pokemons
ON pokemons.trainer_id = trainers.id
GROUP BY trainers.id;

# RIGHT JOIN
SELECT trainers.name AS name_trainer, gyms.name AS name_gym,
pokemons.name AS name_pokemon 
FROM trainers
RIGHT JOIN gyms
ON trainers.gym_id = gyms.id AND trainers.id = 1
RIGHT JOIN pokemons
ON pokemons.trainer_id = trainers.id
ORDER BY trainers.name;

# JOIN
SELECT trainers.name AS name_trainer, gyms.name AS name_gym,
pokemons.name AS name_pokemon 
FROM trainers
JOIN gyms
ON trainers.gym_id = gyms.id AND trainers.id = 1
JOIN pokemons
ON pokemons.trainer_id = trainers.id
ORDER BY trainers.name;

# UNION (unir consultas)
SELECT name FROM trainers
UNION
SELECT name FROM gyms
UNION
SELECT name FROM pokemons;

# VISTAS (VIEWS)
CREATE VIEW num_pokemons AS 
SELECT trainers.name AS name_trainer, gyms.name AS name_gym,
COUNT(pokemons.id) AS num_pokemon 
FROM trainers
LEFT JOIN gyms
ON trainers.gym_id = gyms.id 
LEFT JOIN pokemons
ON pokemons.trainer_id = trainers.id
GROUP BY trainers.id;

# CONSULTAR VISTA
SELECT * FROM num_pokemons;


