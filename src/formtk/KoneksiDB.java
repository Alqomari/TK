

package formtk;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class KoneksiDB {
    static Connection koneksi;
    public static Connection getConnection(){
        try {
            koneksi=DriverManager.getConnection("jdbc:mysql://localhost:3306/mobil","root","");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Koneksi Gagal");
        }
        return koneksi;
    }
    
}
