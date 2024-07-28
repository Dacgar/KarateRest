Instrucciones paso a paso ejecucion de test

1. Descomprimir proyecto
2. Instalar IntelliJ IDEA
3. Dar clic en open
4. Buscar carpeta o directorio donde se descomprimio el proyecto
5. Seleccione la carpeta y de clic en OK
6. Esperar que carguen todas las dependencias
7. Dentro del proyecto, buscar la carpeta src/main/test donde se encontraran los paquetes
8. buscar e ingresar a la carpeta test/java
9. Dentro de la carpeta java/exercise, buscar el paquete de nombre Swagger
10. Allí se encontrarán los paquetes de los diferentes metodos del ejercicio
11. Ejecutar en el siguiente orden los metodos:
    - postPet
        - createPet.feature
    - get
        - searchPetById.feature
    - put
        - updatePet.feature
    - gett
        - searchPetByStatus.feature
12. Al finalizar el test, se mostrara un mensaje en consola con el resultado del test
13. Si el test fue exitoso, se mostrara un mensaje de "Test Passed"
14. Si el test fue fallido, se mostrara un mensaje de "Test Failed"
15. Durante la ejecución, en la consola se mostrará la impresión de los datos de la respuesta de la petición
16. Para visualizar el reporte del test, buscar la carpeta target
17. Dentro de la carpeta target, buscar la carpeta cucumber-reports
18. Dentro de la carpeta cucumber-reports, buscar el archivo de nombre "index.html"
19. Dar clic derecho en el archivo "index.html" y seleccionar la opcion "Open in Browser"
20. Se abrira una ventana en el navegador con el reporte del test
21. En el reporte se mostrara el resultado del test, los escenarios ejecutados, los pasos ejecutados y el tiempo de ejecucion del test
22. Se creo una carpeta de nombre Journey en la raiz del proyecto, donde se encuentran los archivos de los
escenarios de los metodos, sin embargo, este no esta funcional por completo


