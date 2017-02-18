package controller;

import com.jfinal.core.Controller;
import model.VmUserCardMdl;

import java.util.List;

/**
 * Created by Oliverlee on 2017/2/18.
 */
public class VmAdminCtr extends Controller {
    public void vmadminconsole(){
        List<VmUserCardMdl> lstUserCard = VmUserCardMdl.dao.find("select * from vmusercard1");

        setAttr("vmusercard", lstUserCard);
        this.render("vmadminconsole.jsp");
    }
}
