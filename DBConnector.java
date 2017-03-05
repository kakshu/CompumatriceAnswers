/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

public class DBConnector 
{
private String constr;    
public DBConnector()
{
constr="jdbc:mysql://localhost:3306/userdata?user=root&password=megamind";
}
public String getConstr()
{
    return(constr);
}

}
