package com.alipay.mobile.security.bio.service.impl;

import com.alipay.mobile.security.bio.constants.ZcodeConstants;
import com.alipay.mobile.security.bio.exception.BioIllegalArgumentException;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.BioStoreService;
import com.alipay.mobile.security.bio.service.BioUploadItem;
import com.alipay.mobile.security.bio.service.BioUploadResult;
import com.alipay.mobile.security.bio.service.BioUploadServiceCore;

/* loaded from: classes.dex */
public abstract class BioUploadGW<Request> {
    public static final int BASE64_FLAGS = 10;
    protected BioServiceManager mBioServiceManager;
    protected BioStoreService mBioStoreService;
    private BioUploadServiceCore mBioUploadServiceCore;

    public BioUploadGW(BioServiceManager bioServiceManager) {
        if (bioServiceManager != null) {
            this.mBioServiceManager = bioServiceManager;
            this.mBioStoreService = (BioStoreService) this.mBioServiceManager.getBioService(BioStoreService.class);
            return;
        }
        throw new BioIllegalArgumentException("BioServiceManager can't be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BioUploadResult doUpload(Request request, boolean z) {
        if (this.mBioUploadServiceCore == null) {
            this.mBioUploadServiceCore = (BioUploadServiceCore) this.mBioServiceManager.getBioService(BioUploadServiceCore.class);
        }
        BioUploadServiceCore bioUploadServiceCore = this.mBioUploadServiceCore;
        if (bioUploadServiceCore != null) {
            return bioUploadServiceCore.upload(request, z);
        }
        BioUploadResult bioUploadResult = new BioUploadResult();
        bioUploadResult.productRetCode = 3002;
        String str = ZcodeConstants.ZCODE_SYSTEM_EXC;
        bioUploadResult.subCode = str;
        bioUploadResult.subMsg = ZcodeConstants.getMessage(str);
        return bioUploadResult;
    }

    public abstract BioUploadResult upload(BioUploadItem bioUploadItem);
}
