/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action_bean;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author benjamin
 */
public class stuloginBean extends org.apache.struts.action.ActionForm {
    
    private String studentid;
    private String studentname;
    private String institutecode;

    /**
     * @return
     */
    

    /**
     * @return the studentid
     */
    public String getStudentid() {
        return studentid;
    }

    /**
     * @param studentid the studentid to set
     */
    public void setStudentid(String studentid) {
        this.studentid = studentid;
    }

    /**
     * @return the studentname
     */
    public String getStudentname() {
        return studentname;
    }

    /**
     * @param studentname the studentname to set
     */
    public void setStudentname(String studentname) {
        this.studentname = studentname;
    }

    /**
     * @return the institutecode
     */
    public String getInstitutecode() {
        return institutecode;
    }

    /**
     * @param institutecode the institutecode to set
     */
    public void setInstitutecode(String institutecode) {
        this.institutecode = institutecode;
    }
}
