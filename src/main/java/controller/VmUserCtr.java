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
    public void adduserinf(){
        //****注意，如果form表单中既有text又有文件。要先接收文件。
        UploadFile headimg = getFile("headimg");
        UploadFile corplogo = getFile("corplogo");
        VmUserCardMdl userinfo = getModel(VmUserCardMdl.class, "vmusercard");
        if(null != headimg)
        {
            userinfo.set("headimage", headimg.getFileName());
            setAttr("headimgurl", "/vmupload/" + headimg.getFileName());
        }
        if(null != corplogo)
        {
            userinfo.set("corplogo", corplogo.getFileName());
            setAttr("corplogo", "/vmupload/" + corplogo.getFileName());
        }
        userinfo.save();
        this.render("welcom.jsp");

//        System.out.println("file path is " + headimg.getUploadPath());
//        System.out.println("vmupload/" + headimg.getFileName());
//        System.out.println("file path is " + corplogo.getUploadPath());
//        System.out.println("vmupload/" + corplogo.getFileName());
    }
}
