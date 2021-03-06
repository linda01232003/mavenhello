package controller;

import com.jfinal.core.Controller;
import com.jfinal.upload.UploadFile;
import model.VmUserCardMdl;
import model.XmUserMdl;

import java.util.List;

/**
 * Created by Oliverlee on 2017/2/16.
 */
public class VmUserCtr extends Controller {
    public void form(){
        this.render("vmform.jsp");
    }
    public void welcom(){
        this.render("welcom.jsp");
    }
    public void adduserinf(){
        //****注意，如果form表单中既有text又有文件。要先接收文件。
        UploadFile headimg = getFile("vmusercard.headimg");
        UploadFile corplogo = getFile("vmusercard.corplogo");
        VmUserCardMdl userinfo = getModel(VmUserCardMdl.class, "vmusercard");
        if(null != headimg)
        {
            userinfo.set("headimg", "/vming" + "/vmupload/" + headimg.getFileName());
            setAttr("headimgurl", "/vmupload/" + headimg.getFileName());
        }
        if(null != corplogo)
        {
            userinfo.set("corplogo", "/vming" + "/vmupload/" + corplogo.getFileName());
        }
        userinfo.save();
        this.render("welcom.jsp");
    }
}
