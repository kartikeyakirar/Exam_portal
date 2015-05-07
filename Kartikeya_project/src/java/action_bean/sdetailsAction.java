/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action_bean;

import javax.servlet.http.*;
import java.sql.*;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author benjamin
 */
public class sdetailsAction extends org.apache.struts.action.Action {

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
        sdetailsbean sd=(sdetailsbean)form;
        String studentid=request.getParameter("StudentId");
String name=request.getParameter("StudentName");;

HttpSession see=request.getSession(false);
        Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");
PreparedStatement stmt=con.prepareStatement("insert into sdetails values(?,?)");
              stmt.setString(1, studentid);
              stmt.setString(2, name);


           int    i=stmt.executeUpdate();

               if(i>0)
               SUCCESS="okkkk";
               
              else
                  SUCCESS="notokkkk";
                  

        return mapping.findForward(SUCCESS);
    } 
}
