Propondremos una serie de tablas que se puedan relacionar con el objetivo de crear diversas bases de datos en Python provenientes de archivos externo CSV mediante SQLite con la finalidad de realizar consultas relacionales entre ellas.

Creamos la base de datos de un negocio de reparacion de electronicos y creamos la primera tabla con la información de los clientes
<br>![image](https://github.com/user-attachments/assets/f73638dc-bf21-4482-91b4-cfd6cc3183b8)

Insertamos valores para sus nombres, direccion y telefono
<br>![image](https://github.com/user-attachments/assets/5cc8c1e5-c0f7-4595-a780-0bb75afb1d17)

Creamos una segunda tabla con los trabajos registrados
<br>![image](https://github.com/user-attachments/assets/560d2837-635f-4f14-9536-4dfd21b5dbdf)

Insertamos valores con el dispositivo que se llevo a reparar, cliente, el precio del trabajo, cuando se ingreso y cuando se entregó
<br>![image](https://github.com/user-attachments/assets/781597b9-fbed-4542-b22f-4fd53cf5f328)

Uso de LEFT JOIN para filtrar resultados de clientes incluso si no tienen trabajos registrados
<br>![image](https://github.com/user-attachments/assets/18ba40f8-8c6d-4048-ba1d-ef01916d4bae)

Uso de CASE WHEN para clasificar trabajos por su precio
<br>![image](https://github.com/user-attachments/assets/53ed6a28-8f64-48dd-8626-67585b820410)

Uso de CASE WHEN para clasificar trabajos por su precio
<br>![image](https://github.com/user-attachments/assets/9245755b-85ad-4d89-8c4d-4c448b6dd7b8)

Ejemplo de Semi-Join donde se muestran los clientes de la primera tabla donde tienen algun trabajo registrado en la segunda tabla con valor mayor a 1000
<br>![image](https://github.com/user-attachments/assets/8264b291-f529-443e-bf85-b087a95bce7c)

Uso de un SubQuery para seleccionar aquellos clientes cuyo monto de compra es menor al promedio general
<br>![image](https://github.com/user-attachments/assets/2195dd5c-637e-4087-a80c-efb59add4e83)

Uso de Anti-Join para seleccionar Clientes que no tienen trabajos registrados
<br>![image](https://github.com/user-attachments/assets/63abd687-fefb-46c1-9734-f26d8d76f9ca)
