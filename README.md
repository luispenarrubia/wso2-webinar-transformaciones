# wso2-webinar-transformaciones
Repositorio creado para el webinar desafiando las transformaciones con WSO2 ESB.

Además de WSO2 ESB 4.8.1, se han utilizado los siguientes productos para implementar los ejemplos mostrados en el webinar:
- Wiremock 1.5.7: Para implementar los servicios mock de backend.
- SOAPUI 4.6.4: Para realizar el testing.
- JMeter 2.11: Para las pruebas de carga.

Todos los productos han sido instalados por defecto, por lo tanto los puertos son:
- WSO2 ESB 4.8.1: Puerto servicio 8280, puerto consola web 9443.
- Wiremock: Puerto 8080.

La estructura del código es la siguiente:
- esb: Código synapse de la API utilizada y carpeta resources con las transformaciones XSLT, FASTXSLT y XQuery.
- wiremock: Mappings y files utilizados para simular los servicios de backend.
- soapui: Test utilizado para probar los diferentes resources.
- jmeter: Test de carga.