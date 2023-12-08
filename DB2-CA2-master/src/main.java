import javax.swing.plaf.nimbus.State;
import java.sql.*;

public class main {
    public static void main(String[] args) {
        //Video used to connect DB to Java App: https://youtu.be/AHFBPxWebFQ?si=UMsBsKxpAOizz-9S

        //Xampp localhost URL for DB
        String url="jdbc:mysql://localhost:3306/jdbcdemo";

        //Username details
        String username="root";
        String password="";

        //Error catching
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection connection = DriverManager.getConnection(url, username, password);

            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("select * from table");

            //Constructing
            while (resultSet.next()) {
                System.out.println(resultSet.getInt(1) + " " + resultSet.getString(2) + resultSet.getDouble(3));
            }

            connection.close();
        }

        //Exception handling if error
        catch (Exception e) {
            System.out.println(e);
        }
    }
}
