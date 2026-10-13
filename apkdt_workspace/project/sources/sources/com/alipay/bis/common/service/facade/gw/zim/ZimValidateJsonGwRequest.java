package com.alipay.bis.common.service.facade.gw.zim;

import com.alipay.mobile.security.bio.utils.StringUtil;
import java.util.Map;

/* loaded from: classes.dex */
public class ZimValidateJsonGwRequest {
    public Map<String, String> bizData;
    public String zimData;
    public String zimId;

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("ZimValidateJsonGwRequest{zimId='");
        sb.append(this.zimId);
        sb.append("', data='");
        if (this.zimData == null) {
            str = "null";
        } else {
            str = "[length=" + this.zimData.length() + "]";
        }
        sb.append(str);
        sb.append("', bizData='");
        sb.append(StringUtil.map2String(this.bizData));
        sb.append("'");
        sb.append('}');
        return sb.toString();
    }
}
