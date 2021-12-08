package dao;

import beans.Funcionarios;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FuncionariosDAO {
    
    ResultSet rs;
    ArrayList<Funcionarios> listaf = new ArrayList<>();

    public int registroFuncionarios(Funcionarios funcionarios) throws ClassNotFoundException {
        String inserirSql = "INSERT INTO funcionarios" +
            "  (idf, nomef, telefone, endereco) VALUES " +
            " (?, ?, ?, ?);"; 

        int result = 0;
        

        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection conexaoBD = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/progweb9?useSSL=false", "root", "sh3nlong");

            // Step 2:Create a statement using connection object
            PreparedStatement ps = conexaoBD.prepareStatement(inserirSql)) {
            ps.setInt(1, funcionarios.getIdf());
            ps.setString(2, funcionarios.getNomef());
            ps.setString(3, funcionarios.getTelefone());
            ps.setString(4, funcionarios.getEndereco());
           

            System.out.println(ps);
            // Step 3: Execute the query or update query
            result = ps.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }
    /*essa parte é apenas para mostrar o erro*/
    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

    public ArrayList<Funcionarios>PesquisarFuncionarios() throws SQLException{
        
        String inserirSql = "SELECT * FROM funcionarios"; 
        
        try (Connection conexaoBD = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/progweb9?useSSL=false", "root", "sh3nlong");

            PreparedStatement ps = conexaoBD.prepareStatement(inserirSql)) {
            rs = ps.executeQuery(inserirSql);
            
            while(rs.next()){
            
                Funcionarios funcionarios = new Funcionarios();
                funcionarios.setIdf(rs.getInt("idf"));
                funcionarios.setNomef(rs.getString("nomef"));
                funcionarios.setTelefone(rs.getString("telefone"));
                funcionarios.setEndereco(rs.getString("endereco"));                
            
            listaf.add(funcionarios);
            }          
        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        
        return listaf;
        
    }
    
}
    
    
    
