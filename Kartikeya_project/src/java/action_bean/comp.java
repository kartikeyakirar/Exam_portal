/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action_bean;

import com.sun.org.apache.bcel.internal.generic.RETURN;
import javax.servlet.http.*;
import java.sql.*;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author benjamin
 */
public class comp extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static  String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession sess=request.getSession(true);
        instloginbean ilb=(instloginbean)form;
        String login=request.getParameter("loginname");
        String pass=request.getParameter("password");
        
            
        Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");
 Statement stm =con.createStatement();
ResultSet k= stm.executeQuery("select * from register");
while(k.next())
{
    if(k.getString(1).equals(request.getParameter("loginName")) && k.getString(3).equals(request.getParameter("Password")))
{sess.setAttribute("inst",login.toUpperCase());
SUCCESS="okk";}
        else SUCCESS="notokk";
}
return mapping.findForward(SUCCESS);
}}