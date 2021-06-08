package dao;

import java.sql.Connection;
 import java.sql.DriverManager;
 
public class ConnectionFactory {
    
    
    public static Connection getConexao() {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/mercado","root","lucas153");
            
        }catch(Exception erro){
            throw new RuntimeException("Erro 1: " + erro);
        }
    }    
}
