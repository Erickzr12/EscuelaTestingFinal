📚 Backend Escuela – Testing Automation

Proyecto backend orientado a pruebas automatizadas, diseñado para validar servicios REST de una plataforma educativa (Escuela). Incluye buenas prácticas de testing, manejo de datos, configuración centralizada y ejecución por entornos.

🚀 Tecnologías utilizadas

Java

Maven

Karate DSL

JUnit

REST API

JSON

IntelliJ IDEA

📁 Estructura del proyecto
myprojectBackendEscuelaTesting
│
├── src
│   └── test
│       ├── java
│       │   └── runners
│       │       └── TestRunner.java
│       │
│       └── resources
│           ├── features
│           │   ├── login.feature
│           │   ├── alumnos.feature
│           │   └── cursos.feature
│           │
│           ├── data
│           │   ├── user_valid.json
│           │   └── user_invalid.json
│           │
│           └── karate-config.js
│
├── pom.xml
└── README.md
⚙️ Configuración del proyecto
🔹 karate-config.js

Archivo central de configuración:

URL base por entorno (dev, qa, prod)

Variables globales

Headers comunes

Tokens de autenticación

Ejemplo:

function fn() {
  var config = {
    baseUrl: 'https://api.escuela.com'
  };
  return config;
}
▶️ Ejecución de pruebas
Desde terminal
mvn test
Desde IntelliJ IDEA

Abrir el proyecto

Ir a TestRunner.java

Clic derecho → Run

🧪 Tipos de pruebas incluidas

✔ Happy Path
✔ Unhappy Path
✔ Validación de códigos HTTP
✔ Validación de respuestas JSON
✔ Pruebas con datos externos
✔ Reutilización de escenarios

🏷️ Uso de Tags

Las pruebas están correctamente tageadas para ejecución selectiva:

@smoke
@regression
@login

Ejemplo de ejecución por tag:

mvn test -Dkarate.options="--tags @smoke"
🔐 Seguridad

❌ No se exponen credenciales sensibles

✔ Uso de archivos .json para datos de prueba

✔ Tokens y URLs centralizados

📊 Reportes

Karate genera reportes automáticos:

target/karate-reports/karate-summary.html

Abrir el archivo en el navegador para ver resultados gráficos 📈

🧑‍💻 Autor

Erick Manuel Zapata Reque
