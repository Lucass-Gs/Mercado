<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align:center" padding="2"></br></br>
        <form action="executa_excluir.jsp" method"post">
            <label>Codigo:</label></br></br>
            <input type="text" name="codigo" value="<%request.getParameter("codigo");%>" /></br></br>
            
            <label>Descrição:</label></br></br>
            <input type="text" name="descricao" value="<%request.getParameter("descricao");%>" /></br></br>
                       
            <button type="submit">
                OK
            </button></br></br>
            
        </form></br></br>
        
    </body>
</html>
