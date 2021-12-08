package dao;

import beans.Produtos;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProdutosDAO {
    
    ResultSet rs;
    ArrayList<Produtos> lista = new ArrayList<>();

    public int registerProdutos(Produtos produtos) throws ClassNotFoundException {
        String inserirSql = "INSERT INTO produtos" +
            "  (id, nomep, marca, valor) VALUES " +
            " (?, ?, ?, ?);"; 

        int result = 0;
        
       System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@"+produtos.getValor()); //gambiarra

        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection conexaoBD = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/progweb9?useSSL=false", "root", "sh3nlong");

            // Step 2:Create a statement using connection object
            PreparedStatement ps = conexaoBD.prepareStatement(inserirSql)) {
            ps.setInt(1, produtos.getId());
            ps.setString(2, produtos.getNomep());
            ps.setString(3, produtos.getMarca());
            ps.setDouble(4, produtos.getValor());
           

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

    public ArrayList<Produtos>Pesquisar() throws SQLException{
        
        String inserirSql = "SELECT * FROM produtos"; 
        
        try (Connection conexaoBD = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/progweb9?useSSL=false", "root", "sh3nlong");

            PreparedStatement ps = conexaoBD.prepareStatement(inserirSql)) {
            rs = ps.executeQuery(inserirSql);
            
            while(rs.next()){
            
                Produtos produtos = new Produtos();
                produtos.setId(rs.getInt("id"));
                produtos.setNomep(rs.getString("nomep"));
                produtos.setMarca(rs.getString("marca"));
                produtos.setValor(rs.getDouble("valor"));                
            
            lista.add(produtos);
            }          
        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        
        return lista;
        
    }
    
    public int ExcluirProdutos(Produtos produtos) throws ClassNotFoundException {
       
        String inserirSql = "DELETE FROM produtos WHERE id = ?"; 

        int result = 0;
        
        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection conexaoBD = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/progweb9?useSSL=false", "root", "sh3nlong");

            // Step 2:Create a statement using connection object
            PreparedStatement ps = conexaoBD.prepareStatement(inserirSql)) {
            ps.setInt(1, produtos.getId());
           
            // Step 3: Execute the query or update query
            result = ps.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }
    
}
    
    
    
