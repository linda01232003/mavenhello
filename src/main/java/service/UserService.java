package service;

import model.UserMdl;

/**
 * Created by Administrator on 2016/10/28.
 */
public class UserService {
    public boolean addUser( String name){
        UserMdl userM = new UserMdl();
        userM.set("name", name).save();
        return true;
    }
}
