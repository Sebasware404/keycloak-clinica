<#macro registrationLayout displayInfo=false displayMessage=true displayRequiredFields=false>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Piedra Azul - Login</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico" />
    <#-- Aquí es donde Keycloak inyecta los scripts y estilos de login.ftl -->
</head>
<body class="m-0 p-0 overflow-x-hidden">
    <#-- Renderizar el contenido que definimos en login.ftl -->
    <#nested "form">
</body>
</html>
</#macro>