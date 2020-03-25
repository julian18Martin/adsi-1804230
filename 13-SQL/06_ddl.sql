# Agregar una llave foranea
ALTER TABLE pokemons
ADD FOREIGN KEY(trainer_id)
REFERENCES trainers(id);

# Modificar tabla (Renombrar columna)
ALTER TABLE trainers
CHANGE gym gym_id INT NOT NULL;

# Crear un atabla
CREATE TABLE gyms (
id INT AUTO_INCREMENT,
name VARCHAR(32) NOT NULL,
PRIMARY KEY(id));

ALTER TABLE trainers
ADD FOREIGN KEY(gym_id)
REFERENCES gyms(id);