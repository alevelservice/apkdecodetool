package com.alipay.mobile.security.bio.service.impl;

import android.util.Base64;
import com.alipay.bis.common.service.facade.gw.model.upload.BisJsonUploadGwRequest;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.BioStoreParameter;
import com.alipay.mobile.security.bio.service.BioStoreResult;
import com.alipay.mobile.security.bio.service.BioUploadItem;
import com.alipay.mobile.security.bio.service.BioUploadResult;
import com.alipay.mobile.security.bio.utils.StringUtil;

/* loaded from: classes.dex */
public class BioUploadJsonGWImpl extends BioUploadGW<BisJsonUploadGwRequest> {
    public BioUploadJsonGWImpl(BioServiceManager bioServiceManager) {
        super(bioServiceManager);
    }

    private BioUploadResult encryptUploadInfo(BioUploadItem bioUploadItem) {
        byte[] random = this.mBioStoreService.getRandom();
        BioStoreParameter bioStoreParameter = new BioStoreParameter();
        bioStoreParameter.content = bioUploadItem.log;
        bioStoreParameter.publicKey = bioUploadItem.publicKey;
        bioStoreParameter.random = random;
        BioStoreResult encryptWithRandom = this.mBioStoreService.encryptWithRandom(bioStoreParameter);
        BisJsonUploadGwRequest bisJsonUploadGwRequest = new BisJsonUploadGwRequest();
        bisJsonUploadGwRequest.bisToken = bioUploadItem.bisToken;
        if (encryptWithRandom != null) {
            bisJsonUploadGwRequest.behavLog = Base64.encodeToString(encryptWithRandom.encodeContent, 10);
            bisJsonUploadGwRequest.behavLogSig = Base64.encodeToString(encryptWithRandom.encodeSeed, 10);
        }
        byte[] bArr = bioUploadItem.content;
        if (bArr == null) {
            return doUpload(bisJsonUploadGwRequest, bioUploadItem.isNeedSendResponse);
        }
        bisJsonUploadGwRequest.content = new String(bArr);
        bisJsonUploadGwRequest.contentSig = Base64.encodeToString(bioUploadItem.contentSig, 10);
        return doUpload(bisJsonUploadGwRequest, bioUploadItem.isNeedSendResponse);
    }

    private BioUploadResult unEncrytUploadInfo(BioUploadItem bioUploadItem) {
        BisJsonUploadGwRequest bisJsonUploadGwRequest = new BisJsonUploadGwRequest();
        bisJsonUploadGwRequest.bisToken = bioUploadItem.bisToken;
        bisJsonUploadGwRequest.behavLogSig = "";
        bisJsonUploadGwRequest.contentSig = "";
        bisJsonUploadGwRequest.content = new String(bioUploadItem.content);
        bisJsonUploadGwRequest.behavLog = Base64.encodeToString(bioUploadItem.log, 10);
        return doUpload(bisJsonUploadGwRequest, bioUploadItem.isNeedSendResponse);
    }

    @Override // com.alipay.mobile.security.bio.service.impl.BioUploadGW
    public BioUploadResult upload(BioUploadItem bioUploadItem) {
        if (StringUtil.isNullorEmpty(bioUploadItem.publicKey)) {
            return unEncrytUploadInfo(bioUploadItem);
        }
        return encryptUploadInfo(bioUploadItem);
    }
}
