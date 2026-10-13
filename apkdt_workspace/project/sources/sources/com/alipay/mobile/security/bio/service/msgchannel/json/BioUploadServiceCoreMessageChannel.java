package com.alipay.mobile.security.bio.service.msgchannel.json;

import android.os.Bundle;
import com.alibaba.fastjson.JSON;
import com.alipay.bis.common.service.facade.gw.model.upload.BisJsonUploadGwRequest;
import com.alipay.bis.common.service.facade.gw.zim.ZimValidateJsonGwRequest;
import com.alipay.mobile.security.bio.constants.CodeConstants;
import com.alipay.mobile.security.bio.service.BioUploadResult;
import com.alipay.mobile.security.bio.service.local.rpc.IRpcException;
import com.alipay.mobile.security.zim.msgchannel.ZimMessageChannel;

/* loaded from: classes.dex */
public class BioUploadServiceCoreMessageChannel {
    private final String mZimId;
    private final ZimMessageChannel mZimMessageChannel;

    public BioUploadServiceCoreMessageChannel(String str, ZimMessageChannel zimMessageChannel) {
        this.mZimId = str;
        this.mZimMessageChannel = zimMessageChannel;
    }

    public BioUploadResult doUpload(BisJsonUploadGwRequest bisJsonUploadGwRequest) {
        BioUploadResult bioUploadResult = new BioUploadResult();
        ZimValidateJsonGwRequest zimValidateJsonGwRequest = new ZimValidateJsonGwRequest();
        zimValidateJsonGwRequest.zimId = this.mZimId;
        zimValidateJsonGwRequest.zimData = JSON.toJSONString(bisJsonUploadGwRequest);
        Bundle bundle = new Bundle();
        bundle.putString(ZimMessageChannel.K_RPC_REQ, JSON.toJSONString(zimValidateJsonGwRequest));
        String str = "upload(): request= " + bisJsonUploadGwRequest;
        try {
            ZimMessageChannelCallbackImpl zimMessageChannelCallbackImpl = new ZimMessageChannelCallbackImpl(this);
            this.mZimMessageChannel.onAction(bundle, zimMessageChannelCallbackImpl);
            BioUploadResult bioUploadResult2 = zimMessageChannelCallbackImpl.getBioUploadResult();
            String str2 = "callBackImpl.getBioUploadResult() : " + bisJsonUploadGwRequest;
            if (bioUploadResult2 == null) {
                bioUploadResult.validationRetCode = 1001;
                bioUploadResult.productRetCode = 3002;
                bioUploadResult.subCode = CodeConstants.SERVER_PARAM_ERROR;
                bioUploadResult.subMsg = CodeConstants.getMessage(CodeConstants.SERVER_PARAM_ERROR);
            } else {
                bioUploadResult = bioUploadResult2;
            }
        } catch (Throwable th) {
            if (th instanceof IRpcException) {
                int code = th.getCode();
                if (code != 4001 && code != 5 && code != 16 && code != 2) {
                    bioUploadResult.validationRetCode = 1001;
                    bioUploadResult.productRetCode = 3002;
                    String str3 = CodeConstants.SERVER_PARAM_ERROR;
                    bioUploadResult.subCode = str3;
                    bioUploadResult.subMsg = CodeConstants.getMessage(str3);
                } else {
                    bioUploadResult.validationRetCode = 3001;
                    bioUploadResult.productRetCode = 3002;
                    String str4 = CodeConstants.NETWORK_ERROR;
                    bioUploadResult.subCode = str4;
                    bioUploadResult.subMsg = CodeConstants.getMessage(str4);
                }
            } else {
                bioUploadResult.validationRetCode = 1001;
                bioUploadResult.productRetCode = 3002;
                String str5 = CodeConstants.SERVER_PARAM_ERROR;
                bioUploadResult.subCode = str5;
                bioUploadResult.subMsg = CodeConstants.getMessage(str5);
            }
        }
        String str6 = "upload(): response= " + bioUploadResult;
        return bioUploadResult;
    }
}
