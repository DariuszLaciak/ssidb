package com.ssidb.actions;

import com.ssidb.dto.Offer;
import com.ssidb.helpers.XMLUtils;
import com.ssidb.dto.User;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class OfferAction extends org.apache.struts.action.Action {
    
    /**
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

        // extract profile data
        Offer formBean = (Offer) form;

        // perform validation
        if (true) {
            return mapping.findForward("superUser_page");
        } else {
            return mapping.findForward("failure");
        }

    }
}