package model;

import com.jfinal.plugin.activerecord.Model;

/**
 * Created by Administrator on 2017/1/7.
 */
public class XmUserMdl extends Model<XmUserMdl> {
        private static final long serialVersionUID = 1L;
        public static final XmUserMdl dao = new XmUserMdl();
        public static final int SEX_MALE=1;//女
        public static final int SEX_FEMALE=2;//男
}
