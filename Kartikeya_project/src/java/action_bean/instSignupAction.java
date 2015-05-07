/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action_bean;


import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import java.sql.*;
import javax.servlet.http.*;

/**
 *
 * @author benjamin
 */
public class instSignupAction extends org.apache.struts.action.Action {

      /* forward name="success" path="" */
       private static String SUCCESS = "success";

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
            throws Exception { int i=0;
String msg=null;
instSignup ist=(instSignup)form;
String loginname=request.getParameter("loginname");
String email=request.getParameter("email");
String password=request.getParameter("password");
String iname=request.getParameter("institutename");
String cpass=request.getParameter("confirmpassword");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");
              PreparedStatement stmt=con.prepareStatement("insert into register values(?,?,?,?)");
              stmt.setString(1, loginname);
              stmt.setString(2, email);
              stmt.setString(3, password);
              stmt.setString(4, iname);
          
               i=stmt.executeUpdate();

               if(i>0)
               {request.setAttribute("msg","Record Added");
               }
              else
               {request.setAttribute("msg","some Problem Occurred");
              }
                  

        
        return mapping.findForward("done");
    }
}
