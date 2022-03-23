<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">       
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 

        <link href='<c:url value="./public/css/estilos.css" />' rel="stylesheet" />
    </head>
 <body>
        <div class="container mt-4">
            <nav id="menu">
                <h1>Menu Principal</h1>
                    <ul >
                        
                        
                    <li ><a href="index.htm" >Index</a></li>                   
                    <li ><a href="formCliente.htm">Cliente</a></li>
                    <li ><a href="formVenta.htm">Venta</a></li>
                    <li ><a  class="primary" href="#">About</a></li>
                    
                    
                </ul>
            </nav>    
            <br>
            <br>
            <br>
            
         
            <p>Hello! This is the default welcome page for a Spring Web MVC project.</p>
            <p><i>To display a different welcome page for this project, modify</i>
                <tt>index.jsp</tt> <i>, or create your own welcome page then change
                    the redirection in</i> <tt>redirect.jsp</tt> <i>to point to the new
                    welcome page and also update the welcome-file setting in</i>
                <tt>web.xml</tt>.</p>
        </div>
     
     <div class="footer" >
            <p>2022  Derechos Reservados </p>
        </div>
    </body>
</html>
