package com.ap.zoloz.hummer.common;

import android.os.Bundle;
import com.alibaba.fastjson.JSONObject;
import com.alipay.mobile.security.bio.utils.StringUtil;
import com.alipay.mobile.security.zim.api.ZIMCallback;
import com.alipay.mobile.security.zim.api.ZIMFacade;
import com.alipay.mobile.security.zim.api.ZIMFacadeBuilder;
import com.alipay.mobile.security.zim.api.ZIMResponse;
import com.alipay.mobile.security.zim.msgchannel.ZimMessageChannel;
import com.alipay.mobile.security.zim.msgchannel.ZimMessageChannelCallback;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.ap.zoloz.hummer.biz.HummerLogger;
import com.ap.zoloz.hummer.biz.HummerZCodeConstant;
import com.ap.zoloz.hummer.rpc.IRpcCallback;
import com.ap.zoloz.hummer.rpc.RpcManager;
import com.ap.zoloz.hummer.rpc.RpcResponse;
import com.zoloz.zhub.common.factor.model.FactorNextResponse;
import com.zoloz.zhub.common.factor.model.FactorNextResponseInner;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class NativeTask extends TaskTracker {
    public static final String TAG = "NativeTask";
    private boolean isZimDestroyed;
    private ZIMFacade mZimFacade;
    private int nextIndexFromValidate;

    /* JADX INFO: Access modifiers changed from: private */
    public void addOutputParam(HummerContext hummerContext, JSONObject jSONObject, Map<String, String> map) {
        Iterator<Object> it = jSONObject.values().iterator();
        while (it.hasNext()) {
            JSONObject jSONObject2 = (JSONObject) it.next();
            String str = (String) jSONObject2.get(HummerConstants.PIPE_TYPE);
            String str2 = (String) jSONObject2.get(HummerConstants.VALUE);
            if (map.get(str2) != null) {
                hummerContext.add(str2, str, map.get(str2));
            }
        }
    }

    private void doZimTask(final String str, HashMap<String, String> hashMap, ZimMessageChannel zimMessageChannel) {
        this.mZimFacade.verify(str, hashMap, zimMessageChannel, new ZIMCallback() { // from class: com.ap.zoloz.hummer.common.NativeTask.3
            @Override // com.alipay.mobile.security.zim.api.ZIMCallback
            public boolean response(ZIMResponse zIMResponse) {
                int i2;
                if (NativeTask.this.mHummerContext == null) {
                    return true;
                }
                HummerLogger.i(NativeTask.TAG + zIMResponse.toString());
                TaskConfig taskConfig = NativeTask.this.mTaskConfig;
                if (taskConfig != null) {
                    boolean z = false;
                    if (taskConfig.inputParams.get(HummerConstants.VALIDATE_DELEGATE) != null && ((Boolean) ((Map) NativeTask.this.mTaskConfig.inputParams.get(HummerConstants.VALIDATE_DELEGATE)).get(HummerConstants.VALUE)).booleanValue()) {
                        z = true;
                    }
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put(HummerConstants.PROD_RET_CODE, String.valueOf(zIMResponse.code));
                    hashMap2.put(HummerConstants.PROD_SUB_RET_CODE, zIMResponse.subCode);
                    hashMap2.put(HummerConstants.PROD_NAME, NativeTask.this.mTaskConfig.name);
                    hashMap2.put(HummerConstants.ZIM_ID, str);
                    RecordManager.getInstance().record(HummerConstants.ZPROD_RESULT, hashMap2);
                    String str2 = null;
                    int i3 = zIMResponse.code;
                    if (i3 == 1000) {
                        if (!z) {
                            NativeTask nativeTask = NativeTask.this;
                            nativeTask.mHummerContext.updateZStack(nativeTask.mTaskConfig.name, zIMResponse.subCode);
                            str2 = HummerConstants.HUMMER_NEXT;
                        }
                        NavigateConfig navigateConfig = NativeTask.this.mTaskConfig.navigateConfig;
                        if (navigateConfig != null && navigateConfig.next.size() > 1) {
                            JSONObject jSONObject = (JSONObject) NativeTask.this.mTaskConfig.navigateConfig.next.get(HummerConstants.OUTPUT_PARAM);
                            NativeTask nativeTask2 = NativeTask.this;
                            nativeTask2.addOutputParam(nativeTask2.mHummerContext, jSONObject, zIMResponse.extInfo);
                        }
                    } else if (i3 != 2006) {
                        NativeTask nativeTask3 = NativeTask.this;
                        nativeTask3.mHummerContext.updateZStack(nativeTask3.mTaskConfig.name, zIMResponse.subCode);
                        NavigateConfig navigateConfig2 = NativeTask.this.mTaskConfig.navigateConfig;
                        if (navigateConfig2 != null && navigateConfig2.back.size() > 1) {
                            JSONObject jSONObject2 = (JSONObject) NativeTask.this.mTaskConfig.navigateConfig.back.get(HummerConstants.OUTPUT_PARAM);
                            NativeTask nativeTask4 = NativeTask.this;
                            nativeTask4.addOutputParam(nativeTask4.mHummerContext, jSONObject2, zIMResponse.extInfo);
                        }
                        str2 = HummerConstants.HUMMER_BACK;
                    } else {
                        if (!z) {
                            NativeTask nativeTask5 = NativeTask.this;
                            nativeTask5.mHummerContext.updateZStack(nativeTask5.mTaskConfig.name, zIMResponse.subCode);
                            str2 = HummerConstants.HUMMER_FAIL;
                        }
                        NavigateConfig navigateConfig3 = NativeTask.this.mTaskConfig.navigateConfig;
                        if (navigateConfig3 != null && navigateConfig3.fail.size() > 1) {
                            JSONObject jSONObject3 = (JSONObject) NativeTask.this.mTaskConfig.navigateConfig.fail.get(HummerConstants.OUTPUT_PARAM);
                            NativeTask nativeTask6 = NativeTask.this;
                            nativeTask6.addOutputParam(nativeTask6.mHummerContext, jSONObject3, zIMResponse.extInfo);
                        }
                    }
                    if (NativeTask.this.mTaskConfig.inputParams.get("useDefaultExit") != null && ((Boolean) ((Map) NativeTask.this.mTaskConfig.inputParams.get("useDefaultExit")).get(HummerConstants.VALUE)).booleanValue()) {
                        i2 = -1;
                        NativeTask.this.mHummerContext.add(HummerConstants.ZIM_RESP, "context", Integer.valueOf(zIMResponse.code));
                    } else if (StringUtil.isNullorEmpty(str2)) {
                        i2 = NativeTask.this.nextIndexFromValidate;
                    } else {
                        i2 = NativeTask.this.mHummerContext.getNextIndex(str2);
                    }
                    if (!StringUtil.isNullorEmpty(str2) && NativeTask.this.mHummerContext.needRPC(str2)) {
                        NativeTask.this.mHummerContext.add("nextIndex", "context", Integer.valueOf(i2));
                        NativeTask.this.next();
                    } else {
                        NativeTask nativeTask7 = NativeTask.this;
                        ITaskTrackerCallback iTaskTrackerCallback = nativeTask7.mITaskTrackerCallback;
                        if (iTaskTrackerCallback != null) {
                            iTaskTrackerCallback.onCompletion(nativeTask7.mHummerContext, i2);
                        }
                    }
                }
                NativeTask.this.isZimDestroyed = true;
                return true;
            }
        });
    }

    private void handleSystemError() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void next() {
        HummerContext hummerContext = this.mHummerContext;
        if (hummerContext == null || hummerContext.mContext == null) {
            return;
        }
        hummerContext.updateRpcIndexList();
        RpcManager rpcManager = RpcManager.getInstance();
        IRpcCallback iRpcCallback = new IRpcCallback() { // from class: com.ap.zoloz.hummer.common.NativeTask.4
            @Override // com.ap.zoloz.hummer.rpc.IRpcCallback
            public void onCompletion(RpcResponse rpcResponse) {
                List<FactorNextResponseInner> list;
                if (NativeTask.this.mHummerContext == null || rpcResponse == null) {
                    return;
                }
                FactorNextResponse factorNextResponse = rpcResponse.factorNextResponse;
                if (factorNextResponse != null && !HummerConstants.NETWOTK_EXCEPTION.equals(rpcResponse.exception)) {
                    if (!HummerConstants.NORMAL_EXCEPTION.equals(rpcResponse.exception) && (list = factorNextResponse.response) != null && list.size() > 0) {
                        String str = factorNextResponse.versionToken;
                        if (!StringUtil.isNullorEmpty(str)) {
                            NativeTask.this.mHummerContext.add(HummerConstants.VERSION_TOKEN, "context", str);
                        }
                        NativeTask.this.mHummerContext.overwriteZStack(rpcResponse.factorNextResponse.zStack);
                        FactorNextResponseInner factorNextResponseInner = factorNextResponse.response.get(0);
                        if (!HummerConstants.RPC_SUCCESS.equals(factorNextResponseInner.retCode)) {
                            NativeTask nativeTask = NativeTask.this;
                            nativeTask.mHummerContext.updateZStack(nativeTask.mTaskConfig.name, factorNextResponseInner.retCodeSub);
                            NativeTask.this.mHummerContext.recordSystemError(HummerConstants.SERVER_TASK, factorNextResponseInner.retCodeSub);
                            AlertManager.getInstance().alertSystemError(NativeTask.this.mIAlertManagerCallback);
                            return;
                        }
                        for (int i2 = 0; i2 < factorNextResponse.response.size(); i2++) {
                            if (factorNextResponse.response.get(i2).outParams != null) {
                                for (Map.Entry<String, Object> entry : factorNextResponse.response.get(i2).outParams.entrySet()) {
                                    NativeTask.this.mHummerContext.add(entry.getKey(), HummerConstants.SERVER_RESPONSE, entry.getValue());
                                }
                            }
                        }
                        NativeTask nativeTask2 = NativeTask.this;
                        nativeTask2.mITaskTrackerCallback.onCompletion(nativeTask2.mHummerContext, factorNextResponse.nextIndex.intValue());
                        return;
                    }
                    NativeTask nativeTask3 = NativeTask.this;
                    nativeTask3.mHummerContext.updateZStack(nativeTask3.mTaskConfig.name, HummerZCodeConstant.RPC_ERROR_CODE);
                    NativeTask nativeTask4 = NativeTask.this;
                    nativeTask4.mHummerContext.recordSystemError(nativeTask4.mTaskConfig.name, HummerZCodeConstant.RPC_ERROR_CODE);
                    AlertManager.getInstance().alertSystemError(NativeTask.this.mIAlertManagerCallback);
                    return;
                }
                AlertManager.getInstance().alertNetworkError(NativeTask.this.mIAlertManagerCallback);
            }
        };
        RpcManager rpcManager2 = RpcManager.getInstance();
        HummerContext hummerContext2 = this.mHummerContext;
        rpcManager.sendRpc(iRpcCallback, rpcManager2.formatRequest(hummerContext2, ((Integer) hummerContext2.query("nextIndex")).intValue(), true));
    }

    @Override // com.ap.zoloz.hummer.common.TaskTracker
    public void forceQuit() {
        if (this.mZimFacade == null || this.isZimDestroyed || !this.isLive) {
            return;
        }
        if (this.mTaskConfig != null) {
            HummerLogger.i("NativeTask " + this.mTaskConfig.name + " forceQuit");
            HashMap hashMap = new HashMap();
            hashMap.put(HummerConstants.EXT_INFO, "force quit zim " + this.mTaskConfig.name);
            RecordManager.getInstance().record("techSeed", hashMap);
        }
        this.mZimFacade.command(4099);
        this.mZimFacade.destroy();
        this.mZimFacade = null;
        this.isLive = false;
    }

    @Override // com.ap.zoloz.hummer.common.TaskTracker
    public void run(HummerContext hummerContext, final TaskConfig taskConfig, ITaskTrackerCallback iTaskTrackerCallback) {
        this.isLive = true;
        this.mITaskTrackerCallback = iTaskTrackerCallback;
        this.mTaskConfig = taskConfig;
        if (taskConfig == null || hummerContext == null) {
            return;
        }
        this.mHummerContext = hummerContext;
        this.mHummerContext.add(HummerConstants.CURRENT_TASK_NAME, "context", taskConfig.name);
        this.mIAlertManagerCallback = new IAlertManagerCallback() { // from class: com.ap.zoloz.hummer.common.NativeTask.1
            @Override // com.ap.zoloz.hummer.common.IAlertManagerCallback
            public void onHandelNetworkError(boolean z) {
                if (z) {
                    NativeTask.this.next();
                    return;
                }
                HummerContext hummerContext2 = NativeTask.this.mHummerContext;
                if (hummerContext2 != null) {
                    hummerContext2.updateZStack(taskConfig.name, HummerZCodeConstant.NETWORK_BAD);
                    NativeTask nativeTask = NativeTask.this;
                    nativeTask.mITaskTrackerCallback.onCompletion(nativeTask.mHummerContext, -1);
                }
            }

            @Override // com.ap.zoloz.hummer.common.IAlertManagerCallback
            public void onHandelSystemError() {
                if (NativeTask.this.nextIndexFromValidate != 0) {
                    NativeTask nativeTask = NativeTask.this;
                    nativeTask.mITaskTrackerCallback.onCompletion(nativeTask.mHummerContext, nativeTask.nextIndexFromValidate);
                } else {
                    NativeTask nativeTask2 = NativeTask.this;
                    nativeTask2.mITaskTrackerCallback.onCompletion(nativeTask2.mHummerContext, ((Integer) taskConfig.navigateConfig.error.get(HummerConstants.INDEX)).intValue());
                }
            }
        };
        if (!taskConfig.inputParams.containsKey(HummerConstants.ZIM_ID)) {
            handleSystemError();
            this.mHummerContext.updateZStack(taskConfig.name, HummerZCodeConstant.ZIM_ID_KEY_ERROR_CODE);
            this.mHummerContext.recordSystemError(taskConfig.name, HummerZCodeConstant.ZIM_ID_KEY_ERROR_CODE);
            AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
            return;
        }
        String str = (String) this.mHummerContext.query(String.valueOf(((Map) taskConfig.inputParams.get(HummerConstants.ZIM_ID)).get(HummerConstants.VALUE)));
        if (!StringUtil.isNullorEmpty(str)) {
            if (!taskConfig.inputParams.containsKey("zimInitResp")) {
                this.mHummerContext.updateZStack(taskConfig.name, HummerZCodeConstant.ZIM_INIT_RESP_ERROR);
                this.mHummerContext.recordSystemError(taskConfig.name, HummerZCodeConstant.ZIM_INIT_RESP_ERROR);
                AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
                return;
            }
            String valueOf = String.valueOf(this.mHummerContext.query(String.valueOf(((Map) taskConfig.inputParams.get("zimInitResp")).get(HummerConstants.VALUE))));
            HashMap hashMap = new HashMap();
            hashMap.put(HummerConstants.PROD_NAME, this.mTaskConfig.name);
            hashMap.put(HummerConstants.ZIM_ID, str);
            RecordManager.getInstance().record(HummerConstants.ZPROD_INIT, hashMap);
            this.mZimFacade = ZIMFacadeBuilder.create(this.mHummerContext.mContext.getApplicationContext());
            this.isZimDestroyed = false;
            HashMap<String, String> hashMap2 = new HashMap<>();
            hashMap2.put("zimInitResp", valueOf);
            if (taskConfig.inputParams.get(HummerConstants.VALIDATE_DELEGATE) != null && ((Boolean) ((Map) taskConfig.inputParams.get(HummerConstants.VALIDATE_DELEGATE)).get(HummerConstants.VALUE)).booleanValue()) {
                doZimTask(str, hashMap2, new ZimMessageChannel() { // from class: com.ap.zoloz.hummer.common.NativeTask.2
                    @Override // com.alipay.mobile.security.zim.msgchannel.ZimMessageChannel
                    public void onAction(Bundle bundle, final ZimMessageChannelCallback zimMessageChannelCallback) {
                        String string = bundle.getString(ZimMessageChannel.K_RPC_REQ);
                        NativeTask nativeTask = NativeTask.this;
                        nativeTask.mHummerContext.updateZStack(nativeTask.mTaskConfig.name, HummerZCodeConstant.CAPTURE_SUCCESS);
                        HummerContext hummerContext2 = NativeTask.this.mHummerContext;
                        if (hummerContext2 != null) {
                            hummerContext2.add(HummerConstants.VALIDATE_REQUEST, HummerConstants.ARGUMENT, string);
                            NativeTask.this.mHummerContext.updateRpcIndexList();
                            RpcManager rpcManager = RpcManager.getInstance();
                            IRpcCallback iRpcCallback = new IRpcCallback() { // from class: com.ap.zoloz.hummer.common.NativeTask.2.1
                                @Override // com.ap.zoloz.hummer.rpc.IRpcCallback
                                public void onCompletion(RpcResponse rpcResponse) {
                                    List<FactorNextResponseInner> list;
                                    if (NativeTask.this.mHummerContext == null || rpcResponse == null) {
                                        return;
                                    }
                                    Bundle bundle2 = new Bundle();
                                    FactorNextResponse factorNextResponse = rpcResponse.factorNextResponse;
                                    if (factorNextResponse != null && !HummerConstants.NETWOTK_EXCEPTION.equals(rpcResponse.exception)) {
                                        if (!HummerConstants.NORMAL_EXCEPTION.equals(rpcResponse.exception) && (list = factorNextResponse.response) != null && list.size() > 0) {
                                            if (!HummerConstants.RPC_ERROR.equals(factorNextResponse.response.get(0).retCode) && factorNextResponse.response.get(0).outParams != null && factorNextResponse.response.get(0).outParams.containsKey(HummerConstants.VALIDATE_RESPONSE)) {
                                                String str2 = factorNextResponse.versionToken;
                                                if (!StringUtil.isNullorEmpty(str2)) {
                                                    NativeTask.this.mHummerContext.add(HummerConstants.VERSION_TOKEN, "context", str2);
                                                }
                                                NativeTask.this.nextIndexFromValidate = factorNextResponse.nextIndex.intValue();
                                                NativeTask.this.mHummerContext.overwriteZStack(rpcResponse.factorNextResponse.zStack);
                                                for (int i2 = 0; i2 < factorNextResponse.response.size(); i2++) {
                                                    if (factorNextResponse.response.get(i2).outParams != null) {
                                                        for (Map.Entry<String, Object> entry : factorNextResponse.response.get(i2).outParams.entrySet()) {
                                                            NativeTask.this.mHummerContext.add(entry.getKey(), HummerConstants.SERVER_RESPONSE, entry.getValue());
                                                        }
                                                    }
                                                }
                                                String str3 = (String) factorNextResponse.response.get(0).outParams.get(HummerConstants.VALIDATE_RESPONSE);
                                                if (HummerConstants.RPC_SUCCESS.equals(factorNextResponse.response.get(0).retCode)) {
                                                    bundle2.putInt(ZimMessageChannel.K_RPC_RES_CODE, 1000);
                                                } else if (!HummerConstants.VERIFY_RETRY.equals(factorNextResponse.response.get(0).retCode) && !HummerConstants.VERIFY_NEXT.equals(factorNextResponse.response.get(0).retCode)) {
                                                    if (HummerConstants.VERIFY_FAILED.equals(factorNextResponse.response.get(0).retCode)) {
                                                        bundle2.putInt(ZimMessageChannel.K_RPC_RES_CODE, 2006);
                                                    }
                                                } else {
                                                    bundle2.putInt(ZimMessageChannel.K_RPC_RES_CODE, 3000);
                                                }
                                                bundle2.putString(ZimMessageChannel.K_RPC_RES, str3);
                                                zimMessageChannelCallback.onResult(bundle2);
                                                return;
                                            }
                                            NativeTask nativeTask2 = NativeTask.this;
                                            nativeTask2.mHummerContext.updateZStack(nativeTask2.mTaskConfig.name, factorNextResponse.response.get(0).retCodeSub);
                                            NativeTask nativeTask3 = NativeTask.this;
                                            nativeTask3.mHummerContext.recordSystemError(nativeTask3.mTaskConfig.name, factorNextResponse.response.get(0).retCodeSub);
                                            if (NativeTask.this.mZimFacade != null) {
                                                NativeTask.this.mZimFacade.command(4099);
                                                NativeTask.this.mZimFacade.destroy();
                                                NativeTask.this.mZimFacade = null;
                                            }
                                            NativeTask.this.isLive = false;
                                            if (factorNextResponse.nextIndex.intValue() != 0) {
                                                NativeTask.this.nextIndexFromValidate = factorNextResponse.nextIndex.intValue();
                                            }
                                            AlertManager.getInstance().alertSystemError(NativeTask.this.mIAlertManagerCallback);
                                            return;
                                        }
                                        NativeTask nativeTask4 = NativeTask.this;
                                        nativeTask4.mHummerContext.updateZStack(nativeTask4.mTaskConfig.name, HummerZCodeConstant.RPC_ERROR_CODE);
                                        NativeTask nativeTask5 = NativeTask.this;
                                        nativeTask5.mHummerContext.recordSystemError(nativeTask5.mTaskConfig.name, HummerZCodeConstant.RPC_ERROR_CODE);
                                        if (NativeTask.this.mZimFacade != null) {
                                            NativeTask.this.mZimFacade.command(4099);
                                            NativeTask.this.mZimFacade.destroy();
                                            NativeTask.this.mZimFacade = null;
                                        }
                                        NativeTask.this.isLive = false;
                                        AlertManager.getInstance().alertSystemError(NativeTask.this.mIAlertManagerCallback);
                                        return;
                                    }
                                    bundle2.putString(ZimMessageChannel.K_RPC_RES, null);
                                    bundle2.putInt(ZimMessageChannel.K_RPC_RES_CODE, 3000);
                                    zimMessageChannelCallback.onResult(bundle2);
                                }
                            };
                            RpcManager rpcManager2 = RpcManager.getInstance();
                            HummerContext hummerContext3 = NativeTask.this.mHummerContext;
                            rpcManager.sendRpc(iRpcCallback, rpcManager2.formatRequest(hummerContext3, hummerContext3.getNextIndex(HummerConstants.HUMMER_VALIDATE), false));
                        }
                    }
                });
                return;
            } else {
                doZimTask(str, hashMap2, null);
                return;
            }
        }
        this.mHummerContext.updateZStack(taskConfig.name, HummerZCodeConstant.ZIMID_ERROR_CODE);
        this.mHummerContext.recordSystemError(taskConfig.name, HummerZCodeConstant.ZIMID_ERROR_CODE);
        AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
    }

    @Override // com.ap.zoloz.hummer.common.TaskTracker
    public void run(HummerContext hummerContext, TaskConfig taskConfig, UIConfig uIConfig, ITaskTrackerCallback iTaskTrackerCallback) {
    }
}
