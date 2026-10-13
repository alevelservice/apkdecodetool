package com.alipay.zoloz.toyger.bean;

import com.alipay.mobile.security.bio.service.BioAppDescription;
import com.alipay.zoloz.zface.ui.ZFaceActivity;

/* loaded from: classes.dex */
public class ZFaceMetaInfo extends com.alipay.zoloz.zface.beans.ZFaceMetaInfo {
    public ZFaceMetaInfo() {
        BioAppDescription bioAppDescription = new BioAppDescription();
        bioAppDescription.setBioType(100);
        bioAppDescription.setBioAction(1992);
        bioAppDescription.setAppName(ZFaceActivity.class.getName());
        bioAppDescription.setAppInterfaceName(ZFaceActivity.class.getName());
        addApplication(bioAppDescription);
    }
}
