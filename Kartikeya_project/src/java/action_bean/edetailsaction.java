/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action_bean;

import javax.servlet.http.*;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import java.sql.*;

/**
 *
 * @author benjamin
 */
public class edetailsaction extends org.apache.struts.action.Action {

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
            throws Exception {    /* forward name="success" path="" */
   
        int i=0;
String msg=null;
String ename=request.getParameter("f1");
String tlimit=request.getParameter("f2");
String pmarks=request.getParameter("f3");
String nques=request.getParameter("f4");
String nmarks=request.getParameter("f5");
String posmarks=request.getParameter("f6");

Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");
              PreparedStatement stmt=con.prepareStatement("insert into edetails values(?,?,?,?,?,?)");
              stmt.setString(1, ename);
              stmt.setString(2, tlimit);
              stmt.setString(3, pmarks);
              stmt.setString(4, nques);
              stmt.setString(5, nmarks);
              stmt.setString(6, posmarks);

               i=stmt.executeUpdate();

               if(i>0)
               {   msg="Record Added";
               SUCCESS="oko";
               
               }
              else
               {SUCCESS="onok";
               msg="Some Problem Occurred";
               }
               request.setAttribute("msg",msg);   
               
                  
        
        return mapping.findForward(SUCCESS);
    }
}