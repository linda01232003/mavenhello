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
        VmUserCardMdl userinfo = getModel(VmUserCardMdl.class, "xmusercard");
        userinfo.save();

        UploadFile headimg = getFile("headimg");


        UploadFile corplogo = getFile("corplogo");

        System.out.println("file path is " + headimg.getUploadPath());
        System.out.println("vmupload/" + headimg.getFileName());
        System.out.println("file path is " + corplogo.getUploadPath());
        System.out.println("vmupload/" + corplogo.getFileName());

        setAttr("headimgpath", headimg.getUploadPath());
        setAttr("headimgurl", "/vmupload/" + headimg.getFileName());
        setAttr("corplogo", corplogo.getFileName());
        this.render("welcom.jsp");
    }
}
