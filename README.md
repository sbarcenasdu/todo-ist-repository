
# Repositorio General: ToDo List 

## Índice de Contenidos
1. [Descripción General](#descripción-general)
2. [Estructura del Proyecto](#estructura-del-proyecto)
3. [Requisitos Previos](#requisitos-previos)
4. [Instrucciones para Ejecutar el Proyecto](#instrucciones-para-ejecutar-el-proyecto)
   - [Sección 1: SQL](#sección-1-sql)
   - [Sección 2: Astro.js](#sección-2-astrojs)
   - [Sección 3: NestJS](#sección-3-nestjs)
   - [Sección 4: JavaScript](#sección-4-javascript)
5. [Despliegue](#despliegue)
6. [Notas y Consideraciones](#notas-y-consideraciones)

---

## Descripción General
Esta es una aplicación web de lista de tareas (ToDo List) que permite a los usuarios crear, leer, actualizar y eliminar tareas. El proyecto está dividido en cuatro secciones principales: SQL, Astro.js, NestJS y JavaScript. Cada una de estas secciones se encuentra en su propio entorno, y la aplicación está desarrollada utilizando una base de datos PostgreSQL, Astro.js y Alpine.js para la interfaz de usuario, NestJS para la API del lado del servidor, y Tailwind CSS para el diseño gráfico.

## Estructura del Proyecto
El proyecto está dividido en las siguientes carpetas:

- `/sql/`: Contiene las sentencias SQL para la creación de la base de datos y la tabla, así como las consultas requeridas.
- `/frontend/`: Contiene el código fuente del frontend, desarrollado en Astro.js.
- `/backend/`: Contiene el código fuente de la API, desarrollada en NestJS.
- `/scripts/`: Contiene el archivo `app.js` que maneja la lógica de los formularios y la gestión del CRUD utilizando Fetch API.

## Requisitos Previos
- [Node.js](https://nodejs.org/en/) (versión 16 o superior)
- [PostgreSQL](https://www.postgresql.org/) (versión 13 o superior)
- [Git](https://git-scm.com/)

## Instrucciones para Ejecutar el Proyecto

### Sección 1: SQL

#### Descripción
Esta sección cubre la configuración de la base de datos PostgreSQL, incluyendo la creación de la base de datos y la tabla `tasks`, así como la inserción de datos de ejemplo.

#### Pasos
1. **Crear la Base de Datos**:
   - Ejecuta el siguiente comando en tu terminal:
     ```sql
     CREATE DATABASE todo_app;
     ```
2. **Crear la Tabla `tasks`**:
   - Ejecuta las siguientes sentencias SQL:
     ```sql
     CREATE TABLE tasks (
         id SERIAL PRIMARY KEY,
         title VARCHAR(255) NOT NULL,
         description TEXT,
         completed BOOLEAN DEFAULT FALSE
     );
     ```
3. **Insertar Datos de Ejemplo**:
   - Ejecuta las siguientes sentencias SQL:
     ```sql
     INSERT INTO tasks (title, description, completed)
     VALUES
     ('Task 1', 'Description for task 1', FALSE),
     ('Task 2', 'Description for task 2', FALSE),
     ('Task 3', 'Description for task 3', TRUE);
     ```
4. **Consultar las Tareas**:
   - Ejecuta la siguiente consulta SQL para verificar que las tareas se han insertado correctamente:
     ```sql
     SELECT * FROM tasks;
     ```


### interfaz Astro.js

#### Descripción
Esta sección cubre el desarrollo de la interfaz de usuario utilizando Astro.js y Alpine.js para manejar la interactividad. Tailwind CSS se utiliza para estilizar la página.

#### Pasos
1. **Instalar Dependencias**:
   - Navega a la carpeta `/frontend/` y ejecuta:
     ```bash
     npm install
     ```
2. **Iniciar el Servidor de Desarrollo**:
   - Ejecuta:
     ```bash
     npm run dev
     ```
   - La aplicación estará disponible en `http://localhost:3000`.


### api : NestJS

#### Descripción
Esta sección cubre la creación de una API utilizando NestJS. La API permite realizar operaciones CRUD sobre las tareas.

#### Pasos
1. **Instalar Dependencias**:
   - Navega a la carpeta `/backend/` y ejecuta:
     ```bash
     npm install
     ```
2. **Configurar la Base de Datos**:
   - Crea un archivo `.env` basado en el archivo `.env.example` y configura la conexión a tu base de datos PostgreSQL.
3. **Iniciar el Servidor**:
   - Ejecuta:
     ```bash
     npm run start:dev
     ```
   - La API estará disponible en `http://localhost:3000`.


### manipulacion del DOM - JavaScript

#### Descripción
Esta sección cubre la manipulación del DOM y la comunicación con la API usando Fetch API en el archivo `app.js`.

#### Pasos
1. **Revisar el Código**:
   - El archivo `app.js` en la carpeta `/scripts/` contiene la lógica para manejar los formularios y las interacciones CRUD con la API.
2. **Integrar con el Frontend**:
   - Asegúrate de que el archivo `app.js` esté correctamente enlazado en tu proyecto Astro.js.

## Despliegue
1. **Frontend**:
   - Puede desplegarse en plataformas como Vercel, Netlify, o cualquier servidor que soporte aplicaciones Node.js.
2. **Backend**:
   - Puede desplegarse en plataformas como Heroku, AWS, o DigitalOcean. Asegúrate de que la base de datos PostgreSQL esté accesible desde la instancia de tu API.

## Notas y Consideraciones
- **Base de Datos**: No incluyas datos sensibles en el repositorio. Utiliza un archivo `.env` para manejar las configuraciones de conexión.
- **Errores Comunes**: Verifica que los puertos configurados no estén en uso y que las variables de entorno estén correctamente configuradas.
- **Transiciones y Mejoras**: Considera agregar transiciones CSS para mejorar la experiencia del usuario.

