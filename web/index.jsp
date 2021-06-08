<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,dao.ProdutoDao,model.Produto"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align:center" padding="2"></br></br>
        <form action="index.jsp" method="post">
            <label>Busca descrição:</label></br></br>
            
            <input type="text" name="descricao" /></br></br>
            <button type="submit">
                OK
            </button>    
        </form></br></br>
        
         <a href="inserir.jsp">Novo Cadastro</a></br></br> 
        
        <%
            try{
                out.print("<table style='border:1px solid black;margin-left:auto;margin-right:auto; padding:5px;'>");
                out.print("<tr>");
                out.print("<th style='padding: 0 15px'>Código</th><th style='padding: 0 15px'>Descrição</th><th style='padding: 0 15px'>Preço</th><th style='padding: 0 15px'>Editar</th><th>Excluir</th>");
                out.print("</tr>");          
                ProdutoDao prd = new ProdutoDao();
                if(request.getParameter("descricao") == "" || request.getParameter("descricao") == null ){
                    ArrayList<Produto> lista = prd.listarTodos();
                    for(int num =0; num < lista.size(); num++){
                    out.print("<tr>");
                    out.print("<td >"+lista.get(num).getCodigo_produto()+"</td>");
                    out.print("<td>"+lista.get(num).getDescricao_produto()+"</td>");
                    out.print("<td>"+lista.get(num).getPreco_produto()+"</td>");
                    out.print("<td><a href='alterar.jsp?codigo="+lista.get(num).getCodigo_produto()+"&Descricao"+lista.get(num).getDescricao_produto()+"&preco"+lista.get(num).getPreco_produto()
                    +" '>Editar</a></td>");
                    out.print("<td><a href='excluir.jsp?codigo="+lista.get(num).getCodigo_produto()+"&Descricao"+lista.get(num).getDescricao_produto()+" '>Excluir</a></td>");
                    out.print("</tr>");
                    
            }
            }else{
                
                ArrayList<Produto> lista = prd.listarTodosDescricao(request.getParameter("descricao"));
                    for(int num =0; num < lista.size(); num++){
                    out.print("<tr>");
                    out.print("<td>"+lista.get(num).getCodigo_produto()+"</td>");
                    out.print("<td>"+lista.get(num).getDescricao_produto()+"</td>");
                    out.print("<td>"+lista.get(num).getPreco_produto()+"</td>");
                    out.print("<td><a href='alterar.jsp?codigo="+lista.get(num).getCodigo_produto()+"&Descricao"+lista.get(num).getDescricao_produto()+"&preco"+lista.get(num).getPreco_produto()+" '>CLIQUE</a></td>");
                    out.print("<td><a href='excluir.jsp?codigo="+lista.get(num).getCodigo_produto()+"&Descricao"+lista.get(num).getDescricao_produto()+" '>CLIQUE</a></td>");
                    out.print("</tr>");
                    
                }  
                out.print("</table>");
            }   
            
            }catch(Exception erro){
                throw new RuntimeException("Erro10: "+erro);
            
            }
            
        %>
        
       
            
    </body>
</html>
