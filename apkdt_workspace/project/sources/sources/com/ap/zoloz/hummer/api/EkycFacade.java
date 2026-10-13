package com.ap.zoloz.hummer.api;

import android.app.Activity;
import android.content.Context;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.local.rpc.BioRPCService;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.alipay.mobile.security.bio.utils.StringUtil;
import com.alipay.mobile.security.zim.api.ZIMFacade;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.ap.zoloz.hummer.biz.HummerLogger;
import com.ap.zoloz.hummer.biz.HummerZCodeConstant;
import com.ap.zoloz.hummer.common.AlertManager;
import com.ap.zoloz.hummer.common.BaseWebService;
import com.ap.zoloz.hummer.common.HummerContext;
import com.ap.zoloz.hummer.common.HummerCore;
import com.ap.zoloz.hummer.common.IAlertManagerCallback;
import com.ap.zoloz.hummer.common.IHummerCoreCallback;
import com.ap.zoloz.hummer.common.RecordManager;
import com.ap.zoloz.hummer.common.ServiceDesc;
import com.ap.zoloz.hummer.common.WebPageManager;
import com.ap.zoloz.hummer.common.WebTask;
import com.ap.zoloz.hummer.ekyc.biz.HummerEkycConstants;
import com.ap.zoloz.hummer.rpc.IRpcCallback;
import com.ap.zoloz.hummer.rpc.RpcManager;
import com.ap.zoloz.hummer.rpc.RpcResponse;
import com.zoloz.zhub.common.factor.facade.HummerGWFacade;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class EkycFacade extends BaseFacade {
    public static final String TAG = "EkycFacade";
    private static EkycFacade sInstance;
    private IEkycCallback mEkycCallback;
    private IAlertManagerCallback mIAlertManagerCallback;

    public EkycFacade() {
        this.mHummerContext = new HummerContext();
        this.mHummerContext.add(HummerConstants.CURRENT_TASK_NAME, "context", TAG);
        this.mHummerCore = new HummerCore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelEkyc() {
        HummerContext hummerContext = this.mHummerContext;
        if (hummerContext == null) {
            return;
        }
        int cancelIndex = hummerContext.getCancelIndex();
        if (cancelIndex == 0) {
            this.mHummerContext.recordSystemError(TAG, HummerZCodeConstant.INVALID_CANCEL_INDEX);
            cancelExit();
        } else {
            RpcManager.getInstance().sendRpc(new IRpcCallback() { // from class: com.ap.zoloz.hummer.api.EkycFacade.3
                @Override // com.ap.zoloz.hummer.rpc.IRpcCallback
                public void onCompletion(RpcResponse rpcResponse) {
                    EkycFacade.this.cancelExit();
                }
            }, RpcManager.getInstance().formatRequest(this.mHummerContext, cancelIndex, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelExit() {
        WebPageManager.getInstance().exitSession();
        EkycResponse ekycResponse = new EkycResponse();
        ekycResponse.code = 1003;
        HummerContext hummerContext = this.mHummerContext;
        if (hummerContext != null) {
            ekycResponse.subCode = hummerContext.getLastZStackCode();
            ekycResponse.result = JSON.toJSONString(this.mHummerContext.getZStack());
        }
        finalizeEkyc(ekycResponse);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finalizeEkyc(EkycResponse ekycResponse) {
        HashMap hashMap = new HashMap();
        hashMap.put(HummerConstants.PROD_RET_CODE, String.valueOf(ekycResponse.code));
        hashMap.put(HummerConstants.PROD_SUB_RET_CODE, ekycResponse.subCode);
        RecordManager.getInstance().record(HummerEkycConstants.END_EKYC, hashMap);
        this.mEkycCallback.onCompletion(ekycResponse);
        HummerLogger.i("ekyc response =" + ekycResponse.toString());
        release();
    }

    public static EkycFacade getInstance() {
        if (sInstance == null) {
            synchronized (EkycFacade.class) {
                if (sInstance == null) {
                    sInstance = new EkycFacade();
                }
            }
        }
        return sInstance;
    }

    private void initMonitorLog() {
    }

    private BaseWebService parseService() {
        HummerContext hummerContext = this.mHummerContext;
        if (hummerContext == null) {
            return null;
        }
        try {
            return (BaseWebService) Class.forName(((ServiceDesc) JSON.parseObject(new String(FileUtil.getAssetsData(hummerContext.mContext.getApplicationContext().getResources(), HummerConstants.ASSETS_NAME_HUMMER_SERVICE)), ServiceDesc.class)).className).newInstance();
        } catch (ClassNotFoundException unused) {
            this.mHummerContext.recordSystemError(TAG, HummerZCodeConstant.REFLECTION_ERROR_CODE);
            AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
            return null;
        } catch (IllegalAccessException unused2) {
            this.mHummerContext.recordSystemError(TAG, HummerZCodeConstant.REFLECTION_ERROR_CODE);
            AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
            return null;
        } catch (InstantiationException unused3) {
            this.mHummerContext.recordSystemError(TAG, HummerZCodeConstant.REFLECTION_ERROR_CODE);
            AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
            return null;
        } catch (NullPointerException unused4) {
            this.mHummerContext.recordSystemError(TAG, HummerZCodeConstant.WEB_SERVICE_ERROR_CODE);
            AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
            return null;
        }
    }

    public void endWebTask(int i2, String str) {
        HummerLogger.i("endWebTask ");
        HummerContext hummerContext = this.mHummerContext;
        if (hummerContext == null || this.mHummerCore == null) {
            return;
        }
        if (hummerContext.getCurrentTaskConfig().type.equals(HummerConstants.WEB_TASK)) {
            WebTask webTask = (WebTask) this.mHummerCore.getCurrentTask();
            if (webTask != null) {
                webTask.handleResult(i2, str);
                return;
            }
            return;
        }
        this.mHummerContext.recordSystemError(TAG, HummerZCodeConstant.WEBTASK_ERROR_CODE);
        AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
    }

    @Override // com.ap.zoloz.hummer.api.BaseFacade
    protected void forceQuit() {
        HummerLogger.i("forceQuitting");
        super.forceQuit();
        this.mIAlertManagerCallback = null;
    }

    public void forceRelease() {
        if (BaseFacade.sIsBusy) {
            HashMap hashMap = new HashMap();
            hashMap.put(HummerEkycConstants.END_STATUS, HummerEkycConstants.LOGIN_EXPIRED);
            RecordManager.getInstance().record(HummerEkycConstants.END_EKYC, hashMap);
            forceQuit();
            release();
        }
    }

    public HummerContext getHummerContext() {
        return this.mHummerContext;
    }

    public void init(Context context) {
        ZIMFacade.install(context);
    }

    @Override // com.ap.zoloz.hummer.api.BaseFacade
    protected void release() {
        HummerLogger.i("releasing");
        super.release();
        BaseFacade.sIsBusy = false;
        if (sInstance != null) {
            sInstance = null;
        }
        this.mEkycCallback = null;
        this.mIAlertManagerCallback = null;
    }

    public void startEkyc(EkycRequest ekycRequest, IEkycCallback iEkycCallback) {
        HummerLogger.i("EkycFacade startEkyc " + ekycRequest.toString());
        synchronized (EkycFacade.class) {
            if (BaseFacade.sIsBusy) {
                forceQuit();
            }
        }
        BaseFacade.sIsBusy = true;
        this.mEkycCallback = iEkycCallback;
        if (ekycRequest != null && this.mHummerContext != null && this.mHummerCore != null) {
            Map<String, Object> map = ekycRequest.bizConfig;
            if (map != null && map.containsKey(HummerConstants.HUMMER_CONTEXT) && (ekycRequest.bizConfig.get(HummerConstants.HUMMER_CONTEXT) instanceof Activity)) {
                setContext((Context) ekycRequest.bizConfig.get(HummerConstants.HUMMER_CONTEXT));
            }
            if (this.mHummerContext.mContext == null) {
                HummerLogger.e("context is null!");
                EkycResponse ekycResponse = new EkycResponse();
                ekycResponse.code = 1003;
                ekycResponse.subCode = HummerZCodeConstant.CONTEXT_ERROR_CODE;
                ekycResponse.result = HummerZCodeConstant.CONTEXT_ERROR_MSG;
                finalizeEkyc(ekycResponse);
                return;
            }
            this.mIAlertManagerCallback = new IAlertManagerCallback() { // from class: com.ap.zoloz.hummer.api.EkycFacade.1
                @Override // com.ap.zoloz.hummer.common.IAlertManagerCallback
                public void onHandelNetworkError(boolean z) {
                }

                @Override // com.ap.zoloz.hummer.common.IAlertManagerCallback
                public void onHandelSystemError() {
                    EkycFacade.this.cancelEkyc();
                }
            };
            if (StringUtil.isNullorEmpty(ekycRequest.eKYCId)) {
                this.mHummerContext.recordSystemError(TAG, HummerZCodeConstant.HUMMERID_ERROR_CODE);
                AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
                return;
            }
            HummerContext hummerContext = this.mHummerContext;
            hummerContext.mHummerId = ekycRequest.eKYCId;
            hummerContext.getBizConfig().putAll(ekycRequest.bizConfig);
            if (StringUtil.isNullorEmpty(ekycRequest.clientCfg)) {
                this.mHummerContext.recordSystemError(TAG, HummerZCodeConstant.CLIENT_CFG_ERROR_CODE);
                AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
                return;
            }
            if (!parseConfig(ekycRequest.clientCfg)) {
                this.mHummerContext.recordSystemError(TAG, HummerZCodeConstant.INCORRECT_CLIENT_CONFIG);
                AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put(HummerConstants.HUMMER_ID, this.mHummerContext.mHummerId);
            if (this.mHummerContext.getBizConfig() != null && this.mHummerContext.getBizConfig().containsKey("deviceId")) {
                hashMap.put("deviceId", (String) this.mHummerContext.getBizConfig().get("deviceId"));
            }
            if (this.mHummerContext.query(HummerConstants.REMOTELOG_URL) != null) {
                hashMap.put(HummerConstants.REMOTELOG_URL, (String) this.mHummerContext.query(HummerConstants.REMOTELOG_URL));
            }
            RecordManager.getInstance().init(this.mHummerContext.mContext, hashMap);
            HashMap hashMap2 = new HashMap();
            hashMap2.put("sdkVersion", ZIMFacade.getZimMetaInfo(this.mHummerContext.mContext, null).getBioMetaInfo());
            RecordManager.getInstance().record(HummerEkycConstants.START_EKYC, hashMap2);
            BioRPCService bioRPCService = (BioRPCService) BioServiceManager.getLocalService(this.mHummerContext.mContext.getApplicationContext(), BioRPCService.class);
            bioRPCService.setRemoteUrl(String.valueOf(this.mHummerContext.query(HummerConstants.GATEWAY_URL_KEY)));
            HashMap hashMap3 = new HashMap();
            hashMap3.put(HummerEkycConstants.WORKSPACE_ID_KEY, String.valueOf(this.mHummerContext.query(HummerEkycConstants.WORKSPACE_ID_KEY)));
            hashMap3.put(HummerEkycConstants.APP_ID_KEY, String.valueOf(this.mHummerContext.query(HummerEkycConstants.APP_ID_KEY)));
            bioRPCService.setExtProperties(hashMap3);
            RpcManager.getInstance().init((HummerGWFacade) bioRPCService.getRpcProxy(HummerGWFacade.class));
            if (!parseUIConfig("UI.json")) {
                this.mHummerContext.recordSystemError(TAG, HummerZCodeConstant.PARSE_CONFIG_ERROR_CODE);
                AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
                return;
            }
            WebPageManager.getInstance().init(parseService());
            RecordManager.getInstance().record(HummerConstants.ZTECH_CHECK_PASS, null);
            if (!customizePublicKey(ekycRequest.bizConfig)) {
                this.mHummerContext.recordSystemError(TAG, HummerZCodeConstant.PUBLIC_KEY_NULL_ERROR);
                this.mHummerContext.updateZStack(TAG, HummerZCodeConstant.PUBLIC_KEY_NULL_ERROR);
                AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
                return;
            } else {
                customizeLocale(ekycRequest.bizConfig);
                this.mHummerCore.schedule(this.mHummerContext, new IHummerCoreCallback() { // from class: com.ap.zoloz.hummer.api.EkycFacade.2
                    /* JADX WARN: Removed duplicated region for block: B:14:0x0050  */
                    @Override // com.ap.zoloz.hummer.common.IHummerCoreCallback
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public void onCompletion(com.ap.zoloz.hummer.common.HummerContext r5) {
                        /*
                            r4 = this;
                            com.ap.zoloz.hummer.api.EkycFacade r0 = com.ap.zoloz.hummer.api.EkycFacade.this
                            com.ap.zoloz.hummer.common.HummerContext r0 = r0.mHummerContext
                            java.lang.String r1 = "currentTaskName"
                            java.lang.String r2 = "context"
                            java.lang.String r3 = "EkycFacade"
                            r0.add(r1, r2, r3)
                            com.ap.zoloz.hummer.api.EkycResponse r0 = new com.ap.zoloz.hummer.api.EkycResponse
                            r0.<init>()
                            com.ap.zoloz.hummer.api.EkycFacade r1 = com.ap.zoloz.hummer.api.EkycFacade.this
                            r1.mHummerContext = r5
                            com.ap.zoloz.hummer.common.HummerContext r5 = r1.mHummerContext
                            java.lang.String r1 = "hummer_response"
                            java.lang.Object r5 = r5.query(r1)
                            com.ap.zoloz.hummer.common.HummerResponse r5 = (com.ap.zoloz.hummer.common.HummerResponse) r5
                            if (r5 == 0) goto L6f
                            java.lang.String r1 = r5.hummerId
                            r0.eKYCId = r1
                            int r1 = r5.code
                            r2 = 1000(0x3e8, float:1.401E-42)
                            if (r1 == r2) goto L65
                            r2 = 1003(0x3eb, float:1.406E-42)
                            if (r1 == r2) goto L46
                            r2 = 2006(0x7d6, float:2.811E-42)
                            if (r1 == r2) goto L44
                            r5 = 3000(0xbb8, float:4.204E-42)
                            if (r1 == r5) goto L39
                            goto L4a
                        L39:
                            r0.code = r5
                            java.lang.String r5 = "Z7005"
                            r0.subCode = r5
                            java.lang.String r5 = "Zoloz eKYC is pending"
                            r0.result = r5
                            goto L6f
                        L44:
                            r0.code = r2
                        L46:
                            int r5 = r5.code
                            r0.code = r5
                        L4a:
                            com.ap.zoloz.hummer.api.EkycFacade r5 = com.ap.zoloz.hummer.api.EkycFacade.this
                            com.ap.zoloz.hummer.common.HummerContext r5 = r5.mHummerContext
                            if (r5 == 0) goto L6f
                            java.lang.String r5 = r5.getLastZStackCode()
                            r0.subCode = r5
                            com.ap.zoloz.hummer.api.EkycFacade r5 = com.ap.zoloz.hummer.api.EkycFacade.this
                            com.ap.zoloz.hummer.common.HummerContext r5 = r5.mHummerContext
                            java.util.List r5 = r5.getZStack()
                            java.lang.String r5 = com.alibaba.fastjson.JSON.toJSONString(r5)
                            r0.result = r5
                            goto L6f
                        L65:
                            r0.code = r2
                            java.lang.String r5 = "Z7003"
                            r0.subCode = r5
                            java.lang.String r5 = "Zoloz eKYC success"
                            r0.result = r5
                        L6f:
                            com.ap.zoloz.hummer.api.EkycFacade r5 = com.ap.zoloz.hummer.api.EkycFacade.this
                            com.ap.zoloz.hummer.api.EkycFacade.access$100(r5, r0)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.ap.zoloz.hummer.api.EkycFacade.AnonymousClass2.onCompletion(com.ap.zoloz.hummer.common.HummerContext):void");
                    }
                }, true);
                return;
            }
        }
        HummerLogger.e("illegal request!");
    }
}
