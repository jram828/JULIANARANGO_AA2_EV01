/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package conexioncrmaveza;

/**
 *
 * @author USUARIO
 */
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
public class ConexionCRMAveza {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        String usuario="root";
        String password="";
        String url="jdbc:mysql://localhost:3306/crm_aveza";
                Connection conexion;
                Statement statement;
                ResultSet rs;
        try {
            conexion = DriverManager.getConnection(url,usuario,password);
            statement=conexion.createStatement();
            statement.executeUpdate("INSERT INTO tbl_pais(codigo_pais,descripcion) values(028,'Aruba2')");
            statement.executeUpdate("UPDATE tbl_pais set descripcion='Aruba.' WHERE codigo_pais=027");
            statement.executeUpdate("DELETE FROM tbl_pais WHERE descripcion='Aruba2'");
            
            rs = statement.executeQuery("SELECT * FROM tbl_pais");
            rs.next();
            do{
                System.out.println(rs.getString("descripcion")+" : "+rs.getInt("codigo_pais"));
            }while(rs.next());
            
        } catch (SQLException ex) {
            Logger.getLogger(ConexionCRMAveza.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            // TODO code application logic here
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConexionCRMAveza.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
