package com.alipay.mobile.security.zim.gw;

import android.os.Handler;
import com.alibaba.fastjson.JSON;
import com.alipay.bis.common.service.facade.gw.zim.ZimDispatchJsonGwFacade;
import com.alipay.bis.common.service.facade.gw.zim.ZimInitGwRequest;
import com.alipay.bis.common.service.facade.gw.zim.ZimInitGwResponse;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.local.rpc.BioRPCService;
import com.alipay.mobile.security.bio.service.local.rpc.IRpcException;
import com.alipay.mobile.security.zim.biz.RecordProcessor;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class JsonGwService extends BaseGwService {
    public JsonGwService(GwListener gwListener) {
        super(gwListener, "zim-json-upload");
        this.mHandlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper());
    }

    @Override // com.alipay.mobile.security.zim.gw.BaseGwService
    public ZimInitGwResponse convert(String str) {
        return (ZimInitGwResponse) JSON.parseObject(str, ZimInitGwResponse.class);
    }

    @Override // com.alipay.mobile.security.zim.gw.BaseGwService
    public void init(final ZimInitGwRequest zimInitGwRequest) {
        this.mHandler.post(new Runnable() { // from class: com.alipay.mobile.security.zim.gw.JsonGwService.1
            @Override // java.lang.Runnable
            public void run() {
                final ZimInitGwResponse zimInitGwResponse;
                String str = "" + zimInitGwRequest;
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    zimInitGwResponse = ((ZimDispatchJsonGwFacade) ((BioRPCService) BioServiceManager.getCurrentInstance().getBioService(BioRPCService.class)).getRpcProxy(ZimDispatchJsonGwFacade.class)).initStandard(zimInitGwRequest);
                } catch (Throwable th) {
                    ZimInitGwResponse zimInitGwResponse2 = new ZimInitGwResponse();
                    if (th instanceof IRpcException) {
                        zimInitGwResponse2.retCode = 2002;
                        HashMap hashMap = new HashMap();
                        IRpcException iRpcException = th;
                        hashMap.put("rpcResultCode", Integer.toString(iRpcException.getCode()));
                        hashMap.put(HummerConstants.RPC_ERROR_MSG, iRpcException.getMsg());
                        hashMap.put("action", "init");
                        if (RecordProcessor.getInstance() != null) {
                            RecordProcessor.getInstance().record(RecordProcessor.KEY_ZTECH_RPC_ERROR, hashMap);
                        }
                    } else {
                        zimInitGwResponse2.retCode = 1001;
                    }
                    zimInitGwResponse = zimInitGwResponse2;
                }
                if (zimInitGwResponse == null) {
                    zimInitGwResponse = new ZimInitGwResponse();
                    zimInitGwResponse.retCode = 1001;
                }
                String str2 = "" + zimInitGwResponse;
                HashMap hashMap2 = new HashMap();
                int i2 = zimInitGwResponse.retCode;
                if (i2 != 1001 && i2 != 200) {
                    hashMap2.put("result", ZimPlatform.RESULT_TRUE);
                } else {
                    hashMap2.put("result", ZimPlatform.RESULT_FALSE);
                }
                hashMap2.put("retCode", "" + zimInitGwResponse.retCode);
                hashMap2.put("message", "" + zimInitGwResponse.message);
                hashMap2.put("subCode", zimInitGwResponse.retCodeSub);
                hashMap2.put(ZimPlatform.KEY_SUB_MSG, zimInitGwResponse.retMessageSub);
                hashMap2.put("uploadTime", Long.toString(System.currentTimeMillis() - currentTimeMillis));
                Map<String, String> map = zimInitGwResponse.extParams;
                if (map != null && !map.isEmpty()) {
                    hashMap2.putAll(zimInitGwResponse.extParams);
                }
                RecordProcessor.getInstance().record(RecordProcessor.KEY_INITPROD_RESPONSE, hashMap2);
                Handler handler = JsonGwService.this.mMainHandler;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.alipay.mobile.security.zim.gw.JsonGwService.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            GwListener gwListener = JsonGwService.this.mGwListener;
                            if (gwListener != null) {
                                gwListener.onInit(zimInitGwResponse);
                            }
                        }
                    });
                }
            }
        });
    }
}
