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
import javax.servlet.*;

/**
 *
 * @author benjamin
 */
public class stuloginAction extends org.apache.struts.action.Action {

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
            throws Exception {Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","password");
Statement s=c.createStatement();
String sid=request.getParameter("StudentID");
String sname=request.getParameter("StudentName");
String icode=request.getParameter("InstituteCode");
ResultSet rs=s.executeQuery("select * from org_details where ID="+icode);
if(!rs.next()){
SUCCESS="a";
}
else
{
String ilname=rs.getString(2);
String tbl=ilname+"slist";
ResultSet rs1=s.executeQuery("select * from "+tbl+" where SID="+sid+" and Sname='"+sname+"'");
if(!rs1.next()){
SUCCESS="b";
}
else
{
request.setAttribute("iid",icode);
request.setAttribute("iname",ilname);
request.setAttribute("sid",sid);
request.setAttribute("sname",sname);
RequestDispatcher rd=request.getRequestDispatcher("afterslogin1.jsp");
rd.forward(request, response);
}
}
        
        return mapping.findForward(SUCCESS);
    }
}
