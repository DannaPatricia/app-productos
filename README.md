# 📦 Sistema de Gestión de Productos 🛒

## 📖 Descripción

Este proyecto es un sistema de **gestión de productos** que permite a los usuarios realizar operaciones CRUD (Crear, Leer, Actualizar, Eliminar) sobre productos almacenados en una base de datos MySQL. La aplicación está construida utilizando **Servlets** y **JSP** en una arquitectura basada en **Java**, permitiendo a los usuarios añadir, modificar, eliminar y consultar productos.

---

## 🔧 Características y Funcionalidades

- **Añadir Producto:** Los usuarios pueden agregar nuevos productos con detalles como código, sección, nombre, precio, fecha de importación, etc.
- **Modificar Producto:** Los usuarios pueden actualizar los datos de un producto existente.
- **Eliminar Producto:** Permite eliminar productos de la base de datos mediante su código de artículo.
- **Consultar Productos:** Los productos pueden ser consultados por su código de artículo, visualizando todos sus detalles.
- **Base de Datos MySQL:** El sistema utiliza una base de datos MySQL para almacenar los productos.

---

## ⚙️ Requisitos

- **Java 8 o superior**: Asegúrate de tener **Java 8** o una versión posterior para compilar y ejecutar el proyecto.
- **IDE recomendada**: Usar un entorno de desarrollo como **IntelliJ IDEA**, **Eclipse**, o **NetBeans** para facilitar la edición y ejecución.
- **MySQL Database**:
  - Crear una base de datos llamada `despliegue`.
  - Crear la siguiente tabla `PRODUCTOS`:

    ```sql
    CREATE TABLE PRODUCTOS (
        CODIGO_ARTICULO VARCHAR(100) PRIMARY KEY,
        SECCION VARCHAR(100),
        NOMBRE_ARTICULO VARCHAR(255),
        PRECIO DECIMAL(10, 2),
        FECHA DATE,
        IMPORTADO BOOLEAN,
        PAIS_ORIGEN VARCHAR(100)
    );
    ```

---

## 🚀 Ejecución del Proyecto

Para ejecutar el proyecto, sigue estos pasos:

1. **Clona el repositorio**:

    ```bash
    git clone https://github.com/DannaPatricia/app-productos.git
    ```

2. **Navega al directorio del proyecto**:

    ```bash
    cd app-productos
    ```

3. **Compila el código** (si es necesario):

    ```bash
    javac *.java
    ```

4. **Ejecuta el servidor** (en un entorno que soporte Servlets y JSP, como Apache Tomcat).

---

## 🖼️ Capturas de Pantalla

(Pendiente)
---

## 🔜 Próximos Pasos

- **Mejoras en la interfaz:** Implementar una interfaz gráfica de usuario (GUI) para mejorar la interacción.
- **Desarrollo de funcionalidades adicionales:** Añadir más características, como la validación avanzada de datos de productos.
- **Optimización de rendimiento:** Mejorar el rendimiento de la aplicación con mejores prácticas de bases de datos y manejo de sesiones.

---

## 🤝 Contribuciones

Si tienes sugerencias o mejoras, ¡siéntete libre de abrir un **issue** o enviar un **pull request**!

---

## Licencia

Este proyecto está bajo la **Licencia MIT**. Puedes ver el texto completo de la licencia a continuación:

---

MIT License

Copyright (c) [año] [Tu nombre o el de tu organización]

Se concede permiso, de forma gratuita, a cualquier persona que obtenga una copia de este software y los archivos asociados, para utilizarlo sin restricciones, incluyendo sin limitación los derechos de usar, copiar, modificar, fusionar, publicar, distribuir, sublicenciar y/o vender copias del software, y permitir a las personas a las que se les proporcione hacerlo, sujeto a las siguientes condiciones:

El aviso de copyright y este aviso de permiso deberán incluirse en todas las copias o partes sustanciales del software.

EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, EXPRESA O IMPLÍCITA, INCLUYENDO PERO NO LIMITÁNDOSE A LAS GARANTÍAS DE COMERCIABILIDAD, APTITUD PARA UN FIN PARTICULAR Y NO INFRACCIÓN. EN NINGÚN CASO LOS AUTORES O TITULARES DEL COPYRIGHT SERÁN RESPONSABLES POR CUALQUIER RECLAMO, DAÑO O CUALQUIER OTRA RESPONSABILIDAD, YA SEA EN UNA ACCIÓN DE CONTRATO, AGRAVIO O DE CUALQUIER OTRA FORMA, QUE SURJA DE O EN CONEXIÓN CON EL SOFTWARE O EL USO O CUALQUIER OTRO TIPO DE ACCIONES EN EL SOFTWARE.

---

¡Gracias por tu interés en este proyecto! 🚀
