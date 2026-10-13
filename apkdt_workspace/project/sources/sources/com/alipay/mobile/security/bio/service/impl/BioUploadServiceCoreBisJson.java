package com.alipay.mobile.security.bio.service.impl;

import com.alipay.bis.common.service.facade.gw.model.upload.BisJsonUploadGwRequest;
import com.alipay.bis.common.service.facade.gw.model.upload.BisJsonUploadGwResult;
import com.alipay.bis.common.service.facade.gw.upload.BisJsonUploadGwFacade;
import com.alipay.mobile.security.bio.service.BioUploadResult;
import com.alipay.mobile.security.bio.service.BioUploadServiceCore;
import com.alipay.mobile.security.bio.service.local.rpc.BioRPCService;

/* loaded from: classes.dex */
public class BioUploadServiceCoreBisJson extends BioUploadServiceCore<BisJsonUploadGwRequest> {
    @Override // com.alipay.mobile.security.bio.service.BioUploadServiceCore
    public BioUploadResult upload(BisJsonUploadGwRequest bisJsonUploadGwRequest, boolean z) {
        BioUploadResult bioUploadResult = new BioUploadResult();
        try {
            String str = "upload(): request= " + bisJsonUploadGwRequest;
            BisJsonUploadGwResult upload = ((BisJsonUploadGwFacade) ((BioRPCService) this.mBioServiceManager.getBioService(BioRPCService.class)).getRpcProxy(BisJsonUploadGwFacade.class)).upload(bisJsonUploadGwRequest);
            String str2 = "upload(): response= " + upload;
            if (upload != null) {
                bioUploadResult.productRetCode = Integer.parseInt(upload.retCode);
            } else {
                bioUploadResult.productRetCode = 3002;
            }
        } catch (Exception unused) {
            bioUploadResult.productRetCode = 3001;
        }
        return bioUploadResult;
    }
}
