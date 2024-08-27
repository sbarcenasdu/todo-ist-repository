-- Crear base de datos
CREATE DATABASE todo_app
WITH
OWNER = postgres
ENCODING = 'UTF8'
LOCALE_PROVIDER = 'libc'
CONNECTION LIMIT = -1
IS_TEMPLATE = False;

-- Conectar a la base de datos
\c todo_app

-- Crear tabla tasks
CREATE TABLE public.tasks
(
    id serial,
    title character varying(255) NOT NULL,
    description text,
    completed boolean DEFAULT false,
    PRIMARY KEY (id)
);

-- Insertar datos de ejemplo
INSERT INTO public.tasks (title, description, completed)
VALUES
('Revisar el backlog del producto', 'Actualizar y priorizar el backlog del producto en función de las nuevas necesidades del cliente.', false),
('Revisar la definición de hecho (DoD)', 'Asegurarse de que todos los miembros del equipo comprendan y sigan la definición de hecho para completar las historias de usuario.', true),
('Preparar la demostración del sprint', 'Preparar y ensayar la demostración de los resultados del sprint para presentarlos a los stakeholders.', false);

-- Consultar las tareas
SELECT * FROM public.tasks
ORDER BY id ASC;
