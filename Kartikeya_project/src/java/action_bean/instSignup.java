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
public class instSignup extends org.apache.struts.action.ActionForm {
    
     private String loginname;
    private String institutename;
    private String email;
    private String password;
    private String confirmpassword;

    /**
     * @return the loginname
     */
    public String getLoginname() {
        return loginname;
    }

    /**
     * @param loginname the loginname to set
     */
    public void setLoginname(String loginname) {
        this.loginname = loginname;
    }

    /**
     * @return the institutename
     */
    public String getInstitutename() {
        return institutename;
    }

    /**
     * @param institutename the institutename to set
     */
    public void setInstitutename(String institutename) {
        this.institutename = institutename;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the confirmpassword
     */
    public String getConfirmpassword() {
        return confirmpassword;
    }

    /**
     * @param confirmpassword the confirmpassword to set
     */
    public void setConfirmpassword(String confirmpassword) {
        this.confirmpassword = confirmpassword;
    }
    /**
     * @return
     */
    
}
