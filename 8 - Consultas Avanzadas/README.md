Crearemos una base de datos en Python proveniente de un archivo externo CSV mediante SQLite con la finalidad de realizar ordenaciones, agrupaciones y filtrados.

Cargamos modulos necesarios, cursor y datos a utilizar
<br>![image](https://github.com/user-attachments/assets/c1a5b585-3577-4760-b304-8c0060f6e914)

Mediante el uso de Python y SQLite genera un archivo de base de datos denominado “RH.db” que contenga una tabla bajo el nombre de “Detalle” que importe la información proveniente del archivo CSV mostrada en la imagen previa. Mediante diversas consultas en SQL:
<br>![image](https://github.com/user-attachments/assets/3f7c2ab5-ffe0-4542-b471-4e12b0339ddf)

Desplegamos los campos “sales”, “salary” y “satisfaction_level” para todos los registros de la base de datos de forma que los registros se encuentren ordenados de manera descendente de acuerdo al campo “satisfaction_level”.
<br>![image](https://github.com/user-attachments/assets/ad6f1508-1319-493e-abf7-c586fdf52d47)

Visualizamos los registros para los campos “salary”, “number_project” y “satisfaction_level” de manera que sean ordenados en primera instancia de forma ascendente por “number_project” y en segundo lugar de forma descendente por el campo “satisfaction_level”
<br>![image](https://github.com/user-attachments/assets/ee67661e-10ac-4cee-9b5e-592e830c41df)

Mostramos el promedio obtenido de la última evaluación (campo “last_evaluation”) para cada departamento (campo “sales”).
<br>![image](https://github.com/user-attachments/assets/d2d42b77-0b10-46a0-9212-b47b054ade82)

Resolvemos nuevamente el punto anterior pero agrupando sus resultados por el departamento (campo “sales”) y salario (campo “salary”), mostrando también el campo “Salary”.
<br>![image](https://github.com/user-attachments/assets/0beb33c8-d20f-4f50-9817-7562f6aa8554)

Extraemos aquellos departamentos para los cuales el promedio de accidentes de trabajo sea mayor a 0.15.
<br>![image](https://github.com/user-attachments/assets/ee21d8bb-7a1b-4263-af1f-affad0fb3ea9)
