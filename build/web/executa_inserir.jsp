<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,dao.ProdutoDao,model.Produto"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <%
            try{
                Produto pro = new Produto();
                ProdutoDao prd = new ProdutoDao();
                if(request.getParameter("descricao").equals("")|| request.getParameter("preco").equals("")){
                    response.sendRedirect("index.jsp");
            }else{
                pro.setDescricao_produto(request.getParameter("descricao"));
                pro.setPreco_produto(Double.parseDouble(request.getParameter("preco")));
                prd.inserir(pro);
                response.sendRedirect("index.jsp");
            }
                
            }catch(Exception erro){
                throw new RuntimeException("Erro 7:"+erro);
            }
                
        %>
            
         
         
    </body>
</html>
