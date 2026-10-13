package com.alipay.mobile.security.bio.service.impl;

import com.alibaba.fastjson.JSON;
import com.alipay.bis.common.service.facade.gw.model.upload.BisJsonUploadGwRequest;
import com.alipay.bis.common.service.facade.gw.zim.ZimDispatchJsonGwFacade;
import com.alipay.bis.common.service.facade.gw.zim.ZimValidateGwResponse;
import com.alipay.bis.common.service.facade.gw.zim.ZimValidateJsonGwRequest;
import com.alipay.mobile.security.bio.constants.CodeConstants;
import com.alipay.mobile.security.bio.service.BioUploadResult;
import com.alipay.mobile.security.bio.service.local.rpc.BioRPCService;
import com.alipay.mobile.security.bio.service.local.rpc.IRpcException;
import com.alipay.mobile.security.bio.service.msgchannel.json.BioUploadServiceCoreMessageChannel;
import com.alipay.mobile.security.zim.api.ZIMFacade;
import com.alipay.mobile.security.zim.biz.RecordProcessor;
import com.alipay.mobile.security.zim.gw.BioUploadServiceCoreZhub;
import com.alipay.mobile.security.zim.msgchannel.ZimMessageChannel;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class BioUploadServiceCoreZhubJson extends BioUploadServiceCoreZhub<BisJsonUploadGwRequest> {
    private BioUploadServiceCoreMessageChannel mBioUploadServiceCoreMessageChannel;

    @Override // com.alipay.mobile.security.zim.gw.BioUploadServiceCoreZhub
    public void setExtParams(String str, Map<String, Object> map) {
        super.setExtParams(str, map);
        ZimMessageChannel zimMessageChannel = (ZimMessageChannel) map.get(ZIMFacade.KEY_ZIM_MSG_CHANNEL);
        if (zimMessageChannel != null) {
            this.mBioUploadServiceCoreMessageChannel = new BioUploadServiceCoreMessageChannel(str, zimMessageChannel);
        }
    }

    @Override // com.alipay.mobile.security.zim.gw.BioUploadServiceCoreZhub
    public BioUploadResult doUpload(BisJsonUploadGwRequest bisJsonUploadGwRequest, boolean z) {
        if (z && this.mBioUploadServiceCoreMessageChannel != null) {
            return this.mBioUploadServiceCoreMessageChannel.doUpload(bisJsonUploadGwRequest);
        }
        BioUploadResult bioUploadResult = new BioUploadResult();
        try {
            ZimDispatchJsonGwFacade zimDispatchJsonGwFacade = (ZimDispatchJsonGwFacade) ((BioRPCService) this.mBioServiceManager.getBioService(BioRPCService.class)).getRpcProxy(ZimDispatchJsonGwFacade.class);
            ZimValidateJsonGwRequest zimValidateJsonGwRequest = new ZimValidateJsonGwRequest();
            zimValidateJsonGwRequest.zimId = this.mZimId;
            zimValidateJsonGwRequest.zimData = JSON.toJSONString(bisJsonUploadGwRequest);
            if (this.mParams != null && !this.mParams.isEmpty()) {
                zimValidateJsonGwRequest.bizData = new HashMap();
                Object obj = this.mParams.get(ZIMFacade.KEY_CERT_NAME);
                if (obj != null && (obj instanceof String)) {
                    zimValidateJsonGwRequest.bizData.put(ZIMFacade.KEY_CERT_NAME, (String) obj);
                }
                Object obj2 = this.mParams.get(ZIMFacade.KEY_CERT_NO);
                if (obj2 != null && (obj2 instanceof String)) {
                    zimValidateJsonGwRequest.bizData.put(ZIMFacade.KEY_CERT_NO, (String) obj2);
                }
            }
            String str = "upload(): request= " + bisJsonUploadGwRequest;
            ZimValidateGwResponse validateStandard = zimDispatchJsonGwFacade.validateStandard(zimValidateJsonGwRequest);
            String str2 = "upload(): response= " + validateStandard;
            if (validateStandard == null) {
                bioUploadResult.validationRetCode = 1001;
                bioUploadResult.productRetCode = 3002;
                bioUploadResult.subCode = CodeConstants.SERVER_PARAM_ERROR;
                bioUploadResult.subMsg = CodeConstants.getMessage(CodeConstants.SERVER_PARAM_ERROR);
            } else {
                bioUploadResult.productRetCode = validateStandard.productRetCode;
                bioUploadResult.validationRetCode = validateStandard.validationRetCode;
                bioUploadResult.hasNext = validateStandard.hasNext;
                bioUploadResult.nextProtocol = validateStandard.nextProtocol;
                bioUploadResult.extParams = validateStandard.extParams;
                bioUploadResult.subCode = validateStandard.retCodeSub;
                bioUploadResult.subMsg = validateStandard.retMessageSub;
            }
        } catch (Exception e2) {
            if (e2 instanceof IRpcException) {
                IRpcException iRpcException = (IRpcException) e2;
                int code = iRpcException.getCode();
                HashMap hashMap = new HashMap();
                hashMap.put("rpcResultCode", Integer.toString(iRpcException.getCode()));
                hashMap.put(HummerConstants.RPC_ERROR_MSG, iRpcException.getMsg());
                hashMap.put("action", HummerConstants.HUMMER_VALIDATE);
                RecordProcessor.getInstance().record(RecordProcessor.KEY_ZTECH_RPC_ERROR, hashMap);
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
        return bioUploadResult;
    }
}
