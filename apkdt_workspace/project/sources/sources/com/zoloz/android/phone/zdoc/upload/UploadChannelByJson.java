package com.zoloz.android.phone.zdoc.upload;

import com.alibaba.fastjson.JSON;
import com.alipay.bis.common.service.facade.gw.model.common.BisJson.BisBehavLog;
import com.alipay.mobile.security.bio.exception.BioIllegalArgumentException;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.BioUploadItem;
import com.alipay.mobile.security.bio.service.BioUploadService;
import com.alipay.zoloz.toyger.upload.UploadContent;

/* loaded from: classes2.dex */
public class UploadChannelByJson extends UploadChannel {
    private BioUploadService mBioUploadService;

    public UploadChannelByJson(BioServiceManager bioServiceManager) {
        if (bioServiceManager != null) {
            this.mBioUploadService = (BioUploadService) bioServiceManager.getBioService(BioUploadService.class);
            return;
        }
        throw new BioIllegalArgumentException("BioServiceManager is null...");
    }

    @Override // com.zoloz.android.phone.zdoc.upload.UploadChannel
    public void uploadNineShoot(UploadContent uploadContent, BisBehavLog bisBehavLog, String str, String str2) {
        if (uploadContent != null && uploadContent.content != null) {
            BioUploadItem bioUploadItem = new BioUploadItem();
            bioUploadItem.publicKey = str2;
            bioUploadItem.content = uploadContent.content;
            bioUploadItem.log = JSON.toJSONString(bisBehavLog).getBytes();
            bioUploadItem.bisToken = str;
            bioUploadItem.isNeedSendResponse = false;
            bioUploadItem.contentSig = uploadContent.contentSig;
            this.mBioUploadService.upload(bioUploadItem);
            return;
        }
        new IllegalArgumentException("content is empty");
    }

    @Override // com.zoloz.android.phone.zdoc.upload.UploadChannel
    public void uploadPaperInfo(UploadContent uploadContent, BisBehavLog bisBehavLog, String str, String str2) {
        if (uploadContent == null || bisBehavLog == null) {
            return;
        }
        BioUploadItem bioUploadItem = new BioUploadItem();
        bioUploadItem.publicKey = str2;
        bioUploadItem.content = uploadContent.content;
        bioUploadItem.contentSig = uploadContent.contentSig;
        bioUploadItem.log = JSON.toJSONString(bisBehavLog).getBytes();
        bioUploadItem.bisToken = str;
        bioUploadItem.isNeedSendResponse = true;
        this.mBioUploadService.upload(bioUploadItem);
    }
}
