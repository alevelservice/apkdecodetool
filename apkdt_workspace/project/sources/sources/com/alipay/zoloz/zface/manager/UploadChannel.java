package com.alipay.zoloz.zface.manager;

import com.alipay.bis.common.service.facade.gw.model.common.BisJson.BisBehavLog;
import com.alipay.zoloz.toyger.upload.UploadContent;

/* loaded from: classes.dex */
public abstract class UploadChannel {
    public abstract void uploadBehaviourLog(BisBehavLog bisBehavLog, String str, String str2);

    public abstract void uploadFaceInfo(UploadContent uploadContent, BisBehavLog bisBehavLog, String str, String str2);

    public abstract void uploadNineShoot(UploadContent uploadContent, BisBehavLog bisBehavLog, String str, String str2);
}
