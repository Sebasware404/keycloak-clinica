<#macro registrationLayout displayInfo=false displayMessage=true displayRequiredFields=false>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Piedra Azul - Login</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico" />
    
    <style>
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-8px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .animate-fadeIn {
            animation: fadeIn 0.4s cubic-bezier(0.16, 1, 0.3, 1) forwards;
        }
    </style>
</head>
<body class="m-0 p-0 overflow-x-hidden">
    <#-- Renderizar el contenido que definimos en login.ftl -->
    <#nested "form">
</body>
</html>
</#macro>