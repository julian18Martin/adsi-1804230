# Elimina
DELETE FROM traines
WHERE id = 5;

# Eliminar todos los registros de una tabla
DELETE * FROM traines;

# Vaciar la tabla
TRUNCATE trainers;


# Transacciones:
BEGIN;

DELETE FROM trainers
WHERE id > 2;

ROLLBACK;




