package com.alipay.mobile.security.bio.service.msgchannel.json;

import android.os.Bundle;
import com.alibaba.fastjson.JSON;
import com.alipay.bis.common.service.facade.gw.zim.ZimValidateGwResponse;
import com.alipay.mobile.security.bio.constants.CodeConstants;
import com.alipay.mobile.security.bio.service.BioUploadResult;
import com.alipay.mobile.security.zim.msgchannel.ZimMessageChannel;
import com.alipay.mobile.security.zim.msgchannel.ZimMessageChannelCallback;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ZimMessageChannelCallbackImpl implements ZimMessageChannelCallback {
    public static final String TAG = "ZimMessageChannel";
    private final CountDownLatch mCountDownLatch = new CountDownLatch(1);
    private BioUploadResult mUploadResult;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZimMessageChannelCallbackImpl(Object obj) {
    }

    public BioUploadResult getBioUploadResult() {
        try {
            this.mCountDownLatch.await(65L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
        }
        return this.mUploadResult;
    }

    @Override // com.alipay.mobile.security.zim.msgchannel.ZimMessageChannelCallback
    public void onResult(Bundle bundle) {
        ZimValidateGwResponse zimValidateGwResponse;
        ZimValidateGwResponse zimValidateGwResponse2;
        ZimValidateGwResponse zimValidateGwResponse3;
        this.mUploadResult = new BioUploadResult();
        int i2 = bundle.getInt(ZimMessageChannel.K_RPC_RES_CODE);
        if (i2 == 1000) {
            try {
                zimValidateGwResponse = (ZimValidateGwResponse) JSON.parseObject(bundle.getString(ZimMessageChannel.K_RPC_RES), ZimValidateGwResponse.class);
            } catch (Throwable unused) {
                zimValidateGwResponse = null;
            }
            if (zimValidateGwResponse != null) {
                Map<String, String> map = zimValidateGwResponse.extParams;
                if (map != null && !map.isEmpty()) {
                    this.mUploadResult.extParams = new HashMap(zimValidateGwResponse.extParams);
                }
                BioUploadResult bioUploadResult = this.mUploadResult;
                bioUploadResult.subCode = zimValidateGwResponse.retCodeSub;
                bioUploadResult.subMsg = zimValidateGwResponse.retMessageSub;
            }
            BioUploadResult bioUploadResult2 = this.mUploadResult;
            bioUploadResult2.validationRetCode = 1000;
            bioUploadResult2.productRetCode = 1001;
        } else if (i2 == 2006) {
            BioUploadResult bioUploadResult3 = this.mUploadResult;
            bioUploadResult3.validationRetCode = 2006;
            bioUploadResult3.productRetCode = 2001;
            try {
                zimValidateGwResponse2 = (ZimValidateGwResponse) JSON.parseObject(bundle.getString(ZimMessageChannel.K_RPC_RES), ZimValidateGwResponse.class);
            } catch (Throwable unused2) {
                zimValidateGwResponse2 = null;
            }
            if (zimValidateGwResponse2 != null) {
                Map<String, String> map2 = zimValidateGwResponse2.extParams;
                if (map2 != null && !map2.isEmpty()) {
                    this.mUploadResult.extParams = new HashMap(zimValidateGwResponse2.extParams);
                }
                BioUploadResult bioUploadResult4 = this.mUploadResult;
                bioUploadResult4.subCode = zimValidateGwResponse2.retCodeSub;
                bioUploadResult4.subMsg = zimValidateGwResponse2.retMessageSub;
            }
        } else if (i2 != 3000) {
            BioUploadResult bioUploadResult5 = this.mUploadResult;
            bioUploadResult5.validationRetCode = 2006;
            bioUploadResult5.productRetCode = 2002;
            String str = CodeConstants.SERVER_PARAM_ERROR;
            bioUploadResult5.subCode = str;
            bioUploadResult5.subMsg = CodeConstants.getMessage(str);
        } else {
            try {
                zimValidateGwResponse3 = (ZimValidateGwResponse) JSON.parseObject(bundle.getString(ZimMessageChannel.K_RPC_RES), ZimValidateGwResponse.class);
            } catch (Throwable unused3) {
                zimValidateGwResponse3 = null;
            }
            if (zimValidateGwResponse3 == null) {
                BioUploadResult bioUploadResult6 = this.mUploadResult;
                bioUploadResult6.validationRetCode = 1001;
                bioUploadResult6.productRetCode = 3002;
                String str2 = CodeConstants.SERVER_PARAM_ERROR;
                bioUploadResult6.subCode = str2;
                bioUploadResult6.subMsg = CodeConstants.getMessage(str2);
            } else {
                BioUploadResult bioUploadResult7 = this.mUploadResult;
                bioUploadResult7.productRetCode = zimValidateGwResponse3.productRetCode;
                bioUploadResult7.validationRetCode = zimValidateGwResponse3.validationRetCode;
                bioUploadResult7.hasNext = zimValidateGwResponse3.hasNext;
                bioUploadResult7.nextProtocol = zimValidateGwResponse3.nextProtocol;
                bioUploadResult7.subCode = zimValidateGwResponse3.retCodeSub;
                bioUploadResult7.subMsg = zimValidateGwResponse3.retMessageSub;
                Map<String, String> map3 = zimValidateGwResponse3.extParams;
                if (map3 != null && !map3.isEmpty()) {
                    this.mUploadResult.extParams = new HashMap(zimValidateGwResponse3.extParams);
                }
            }
        }
        String str3 = ZimMessageChannelCallbackImpl.class.getSimpleName() + ".mCountDownLatch.countDown(), mUploadResult=" + this.mUploadResult;
        this.mCountDownLatch.countDown();
    }
}
