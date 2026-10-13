package com.zoloz.android.phone.zdoc.upload;

import com.alipay.bis.common.service.facade.gw.model.common.BisJson.BisBehavLog;
import com.alipay.zoloz.toyger.upload.UploadContent;

/* loaded from: classes2.dex */
public abstract class UploadChannel {
    public abstract void uploadNineShoot(UploadContent uploadContent, BisBehavLog bisBehavLog, String str, String str2);

    public abstract void uploadPaperInfo(UploadContent uploadContent, BisBehavLog bisBehavLog, String str, String str2);
}
