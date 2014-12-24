package com.ssidb.actions;

import com.ssidb.dto.Offer;
import com.ssidb.dto.UserDTO;
import com.ssidb.helpers.HibernateUtil;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;

public class OfferAction extends org.apache.struts.action.Action {
    
    Session s;
    
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
        float price = formBean.getPrice();
        float total_area = formBean.getTotal_area();
        int n_of_rooms = formBean.getN_of_rooms();
        float distance_to_center = formBean.getDistance_to_center();
        float distance_to_MPK = formBean.getDistance_to_MPK();
        int floor = formBean.getFloor();
        String exposition = formBean.getExposition();
        String address = formBean.getAddress();
        
        // perform validation
        if ((price > 0)
                && total_area > 0) {
            HttpSession sess = request.getSession();
            long user_id = (long) sess.getAttribute("user_id");
            //s = HibernateUtil.getSessionFactory().openSession();
            s = HibernateUtil.getSessionFactory().getCurrentSession();
            s.beginTransaction();
            UserDTO user = (UserDTO) s.load(UserDTO.class, user_id);
            Offer nowa = new Offer(price, total_area, n_of_rooms, distance_to_center, distance_to_MPK, floor, exposition, address);
            nowa.setUser(user);
            user.getOffers().add(nowa);
            s.save(nowa);
            s.getTransaction().commit();
            //s.close();
            return mapping.findForward("superUser_page");       
        } else {
            return mapping.findForward("failure");
        }

    }
}
