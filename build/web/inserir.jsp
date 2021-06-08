<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align:center" padding="2"></br></br>
        <form action="executa_inserir.jsp" method="post">
            <!-- <label>Codigo:</label>
            <input type="text" name="codigo"/><br/> !-->
            
            <label>Descrição:</label></br></br>
            <input type="text" name="descricao"/></br></br>
            
            <label>Preço:</label></br></br>
            <input type="number" name="preco"/></br></br>
            
            <button type="submit">
                OK
            </button></br></br>
            
        </form></br></br>
        
    </body>
</html>
