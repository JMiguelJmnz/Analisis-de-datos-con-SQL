Generaremos un archivo de base de datos denominado “RH.db”, mediante el uso de Python y SQLite que contenga una tabla bajo el nombre de “Detalle” que importe la información proveniente del archivo CSV mostrada en la imagen previa. Mediante diversas consultas en SQL:

Importamos modulos necesarios, especificamos ruta donde trabajaremos, creamos la base de datos RH y cargamos los datos a utilizar
<br>![image](https://github.com/user-attachments/assets/1e4c54b3-ffd8-40cd-a16e-38272961f833)

Revisamos los datos para saber que tipo de informacion utilizar y la cantidad de datos que tenemos
<br>![image](https://github.com/user-attachments/assets/3e673f74-6e82-4dcd-85a2-ef50d94f642b)

Cargamos los datos dentro de la base de datos creada
<br>![image](https://github.com/user-attachments/assets/386644a3-4aab-41b2-9428-8fec4249dd43)

Determinamos quién tiene el nivel de satisfacción promedio más alto entre aquellos empleados que abandonan la empresa (con valor 1 en la columna “left”) y los que deciden quedarse (con valor de 0 en la columna “left”).
<br>![image](https://github.com/user-attachments/assets/f07b2efb-cd4d-4cc6-957c-7797d54e3c70)

Determinamos el número promedio de horas de trabajo (asociado a la columna “average_monthly_hours”) para todos aquellos empleados que tienen un nivel de salario bajo (“low” en columna “salary”) o que tienen un nivel de salario medio (“medium”).
<br>![image](https://github.com/user-attachments/assets/01de375c-32a1-4abc-8ad3-bd961d4132a3)

Los empleados con salario LOW trabajaron en promedio 200.99 horas mensuales y los empleados con salario Medium trabajaron en promedio 201.33 horas mensuales

Extraemos aquellos registros de empleados que obtuvieron una promoción en los últimos 5 años (esto es, renglones con un valor de “1” en la columna “promotion_last_5years”) y que además abandonaron la empresa.
<br>![image](https://github.com/user-attachments/assets/b9145d50-85ea-4887-931a-a65976325a64)

Extraemos aquellos registros de empleados que obtuvieron una calificación de 0.9 o más en su última evaluación (columna “last_evaluation”).
<br>![image](https://github.com/user-attachments/assets/2719a28c-346d-47fc-a651-0bd7d90863c8)
