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
public class qdeatilAction extends org.apache.struts.action.Action {

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
            throws Exception {
        int i=0;
String msg=null;
qdetails qd=(qdetails)form;
String question=request.getParameter("fq");
String optiona=request.getParameter("f1");
String optionb=request.getParameter("f2");
String optionc=request.getParameter("f3");
String optiond=request.getParameter("f4");
String answer=request.getParameter("fa");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");
              PreparedStatement stmt=con.prepareStatement("insert into qdetails values(?,?,?,?,?,?)");
              stmt.setString(1, question);
              stmt.setString(2, optiona);
              stmt.setString(3, optionb);
              stmt.setString(4, optionc);
              stmt.setString(5, optiond);
              stmt.setString(6, answer);

               i=stmt.executeUpdate();

               if(i>0)
                  SUCCESS="okkk";
              else
                  SUCCESS="notokkk";

        
        return mapping.findForward(SUCCESS);
    }
}
