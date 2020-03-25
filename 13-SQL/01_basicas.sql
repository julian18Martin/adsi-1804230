# Acceder a base de datos en el navegador:
localhost/phpmyadmin

# Acceder a base de datos en linea de comandos:
C:\xampp\mysql\bin>mysql -u root -p

# Para ver la version 
SELECT version();

# Mostrar bases de datos creadas
SHOW databases;

# Crerar una base de datos 
CREATE database adsi1804230;

# Conectarse a una base de datos
CONNECT mysql;

# Usar Base de Datos
USE adsi1804230;

# Mostrar tablas
SHOW tables;

# Crear tabla
 CREATE table pokemons2 (
    id INT AUTO_INCREMENT,
    name VARCHAR(32) NOT NULL,
    type VARCHAR(32) NOT NULL,
    strength INT NOT NULL,
    stamina INT NOT NULL,
    speed INT NOT NULL,
    accuracy INT NOT NULL,
    PRIMARY KEY(id));

 CREATE TABLE types (
  id INT AUTO_INCREMENT,
  name VARCHAR(32) NOT NULL,
  PRIMARY KEY(id));

# Agrgar columna
 ALTER TABLE pokemons 
 ADD COLUMN trainer_id INT NOT NULL
 AFTER accuracy;

# Eliminar columna
 ALTER TABLE pokemons
 DROP COLUMN trainer_id;

 # 
 UPDATE pokemons
 SET trainer_id = 1
 WHERE id = 1 OR id = 2 OR id = 3 OR id = 4;

 UPDATE pokemons
 SET trainer_id = 2
 WHERE  id = 5 OR id = 7 OR id = 9 OR id = 11 OR id = 13 OR id = 15 OR id = 17 OR id = 19;

 UPDATE pokemons
 SET trainer_id = 3
 WHERE  id = 6 OR id = 8 OR id = 10 OR id = 12 OR id = 14 OR id = 16 OR id = 18 OR id = 20;

 # 


 # Descripcion de la tabla 
 DESCRIBE pokemons;

 # Insertar registro
 INSERT INTO pokemons VALUES (DEFAULT, 'pikachu', 'Electrico', 90, 80, 96, 79);
 INSERT INTO pokemons VALUES (DEFAULT, 'charmander', 'fuego', 95, 78, 80, 82);
 INSERT INTO pokemons VALUES (DEFAULT, 'bulbasaur', 'planta', 80, 88, 70, 75);
 INSERT INTO pokemons VALUES (DEFAULT, 'squirle', 'agua', 70, 90, 75, 90);
 INSERT INTO pokemons VALUES (DEFAULT, 'snorlax', 'normal',180 , 320, 50, 180);
 INSERT INTO pokemons VALUES (DEFAULT, 'Vaporeon', 'Agua',186, 260, 90, 168);
 INSERT INTO pokemons VALUES (DEFAULT, 'Lapras', 'Agua',111, 255, 100, 168);
 INSERT INTO pokemons VALUES (DEFAULT, 'Blastoise', 'Agua',720, 158, 70, 222);
 INSERT INTO pokemons VALUES (DEFAULT, 'Golem', 'Roca',560, 160, 80, 198);
 INSERT INTO pokemons VALUES (DEFAULT, 'Dragonite', 'Dragon',900, 250, 120, 182);
 INSERT INTO pokemons VALUES (DEFAULT, 'Exeggutor', 'Planta',596, 190, 90, 232);
 INSERT INTO pokemons VALUES (DEFAULT, 'Omastar', 'Roca',1500, 140, 112, 202);
 INSERT INTO pokemons VALUES (DEFAULT, 'Muk', 'Veneno',1070, 210, 112, 180);
 INSERT INTO pokemons VALUES (DEFAULT, 'Onix', 'Roca',662, 70, 80, 90);
 INSERT INTO pokemons VALUES (DEFAULT, 'Poliwag', 'Agua',815, 80, 70, 108);
 INSERT INTO pokemons VALUES (DEFAULT, 'Mankey', 'Pelea',563, 80, 70, 122);
 INSERT INTO pokemons VALUES (DEFAULT, 'Magnemite', 'Electrico',750, 50, 40, 128);
 INSERT INTO pokemons VALUES (DEFAULT, 'Pidgey', 'Normal',818, 80, 95, 90);
 INSERT INTO pokemons VALUES (DEFAULT, 'Gastly', 'Fantasma',750, 60, 60, 82);
 INSERT INTO pokemons VALUES (DEFAULT, 'Rattata', 'Normal',810, 60, 65, 22);

# Crear copia de seguridad
C:\xampp\mysql\bin>mysqldump -u root -p adsi1804230 > C:\Users\Desktop\Programacion\adsi-1804230-master\13-SQL\backup.sql

# Recuperar copia de seguridad (Backup)
CREATE DATABASE adsi1804230;
C:\xampp\mysql\bin>mysql -u root -p adsi1804230 < C:\Users\Desktop\Programacion\adsi-1804230-master\13-SQL\backup.sql

C:\xampp\mysql\bin>mysql -u root -p adsi1804230 < C:\Users\57316\Desktop\Programacion\adsi-1804230-master\13-SQL\backup.sql

# Insertar datos de una tabla a otra

INSERT INTO pokemons_bk SELECT * FROM pokemons;