package com.ap.zoloz.hummer.common;

import android.content.DialogInterface;
import com.alipay.mobile.security.bio.utils.StringUtil;
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
public class HummerCore {
    public static final String TAG = "HummerCore";
    private HummerContext mHummerContext;
    private IHummerCoreCallback mHummerCoreCallback;
    private IAlertManagerCallback mIAlertManagerCallback;
    private Map<Integer, TaskTracker> mTasks = new HashMap();
    private int mZorder = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public void cancel() {
        HummerContext hummerContext = this.mHummerContext;
        if (hummerContext == null) {
            return;
        }
        int cancelIndex = hummerContext.getCancelIndex();
        if (cancelIndex == 0) {
            this.mHummerContext.recordSystemError(TAG, HummerZCodeConstant.INVALID_CANCEL_INDEX);
            cancelExit();
        } else {
            RpcManager.getInstance().sendRpc(new IRpcCallback() { // from class: com.ap.zoloz.hummer.common.HummerCore.5
                @Override // com.ap.zoloz.hummer.rpc.IRpcCallback
                public void onCompletion(RpcResponse rpcResponse) {
                    HummerCore.this.cancelExit();
                }
            }, RpcManager.getInstance().formatRequest(this.mHummerContext, cancelIndex, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelExit() {
        WebPageManager.getInstance().exitSession();
        HummerResponse hummerResponse = new HummerResponse();
        hummerResponse.code = 1003;
        HummerContext hummerContext = this.mHummerContext;
        hummerResponse.hummerId = hummerContext.mHummerId;
        hummerContext.add(HummerConstants.HUMMER_RESPONSE, "context", hummerResponse);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exit() {
        HummerResponse hummerResponse = new HummerResponse();
        HummerContext hummerContext = this.mHummerContext;
        if (hummerContext != null) {
            hummerResponse.hummerId = hummerContext.mHummerId;
            String str = (String) hummerContext.query(HummerConstants.EKYC_STATUS);
            if (!StringUtil.isNullorEmpty(str)) {
                char c2 = 65535;
                int hashCode = str.hashCode();
                if (hashCode != -202516509) {
                    if (hashCode != 578079082) {
                        if (hashCode == 982065527 && str.equals(HummerConstants.EKYC_PENDING)) {
                            c2 = 2;
                        }
                    } else if (str.equals(HummerConstants.EKYC_FAIL)) {
                        c2 = 1;
                    }
                } else if (str.equals(HummerConstants.EKYC_SUCCESS)) {
                    c2 = 0;
                }
                if (c2 == 0) {
                    hummerResponse.code = 1000;
                } else if (c2 == 1) {
                    hummerResponse.code = 2006;
                } else {
                    if (c2 != 2) {
                        this.mHummerContext.recordSystemError(TAG, HummerZCodeConstant.KEY_PARAM_ERROR_CODE);
                        AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
                        return;
                    }
                    hummerResponse.code = 3000;
                }
            } else if (this.mHummerContext.query(HummerConstants.ZIM_RESP) != null) {
                hummerResponse.code = ((Integer) this.mHummerContext.query(HummerConstants.ZIM_RESP)).intValue();
            } else {
                hummerResponse.code = 1003;
            }
            this.mHummerContext.add(HummerConstants.HUMMER_RESPONSE, "context", hummerResponse);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finalizeHummer() {
        AlertManager.getInstance().showProgressDialog("", false, new DialogInterface.OnCancelListener() { // from class: com.ap.zoloz.hummer.common.HummerCore.6
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
            }
        }, true);
        RpcManager rpcManager = RpcManager.getInstance();
        IRpcCallback iRpcCallback = new IRpcCallback() { // from class: com.ap.zoloz.hummer.common.HummerCore.7
            @Override // com.ap.zoloz.hummer.rpc.IRpcCallback
            public void onCompletion(RpcResponse rpcResponse) {
                List<FactorNextResponseInner> list;
                AlertManager.getInstance().dismissDialog();
                if (HummerCore.this.mHummerContext == null || rpcResponse == null) {
                    return;
                }
                FactorNextResponse factorNextResponse = rpcResponse.factorNextResponse;
                if (factorNextResponse == null || HummerConstants.NETWOTK_EXCEPTION.equals(rpcResponse.exception)) {
                    AlertManager.getInstance().alertNetworkError(HummerCore.this.mIAlertManagerCallback);
                    return;
                }
                if (HummerConstants.NORMAL_EXCEPTION.equals(rpcResponse.exception) || (list = factorNextResponse.response) == null || list.size() <= 0) {
                    HummerCore.this.mHummerContext.recordSystemError(HummerCore.TAG, HummerZCodeConstant.RPC_ERROR_CODE);
                    AlertManager.getInstance().alertSystemError(HummerCore.this.mIAlertManagerCallback);
                    return;
                }
                String str = factorNextResponse.versionToken;
                if (!StringUtil.isNullorEmpty(str)) {
                    HummerCore.this.mHummerContext.add(HummerConstants.VERSION_TOKEN, "context", str);
                }
                HummerCore.this.mHummerContext.overwriteZStack(rpcResponse.factorNextResponse.zStack);
                FactorNextResponseInner factorNextResponseInner = factorNextResponse.response.get(0);
                if (!HummerConstants.RPC_SUCCESS.equals(factorNextResponseInner.retCode)) {
                    HummerCore.this.mHummerContext.recordSystemError(HummerCore.TAG, factorNextResponseInner.retCodeSub);
                    AlertManager.getInstance().alertSystemError(HummerCore.this.mIAlertManagerCallback);
                    return;
                }
                if (factorNextResponse.response.get(0).outParams != null) {
                    for (Map.Entry<String, Object> entry : factorNextResponse.response.get(0).outParams.entrySet()) {
                        HummerCore.this.mHummerContext.add(entry.getKey(), HummerConstants.SERVER_RESPONSE, entry.getValue());
                    }
                }
                HummerCore.this.exit();
            }
        };
        RpcManager rpcManager2 = RpcManager.getInstance();
        HummerContext hummerContext = this.mHummerContext;
        rpcManager.sendRpc(iRpcCallback, rpcManager2.formatRequest(hummerContext, ((Integer) hummerContext.query("nextIndex")).intValue(), true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish() {
        this.mZorder = 0;
        HummerContext hummerContext = this.mHummerContext;
        if (hummerContext != null) {
            hummerContext.setCurrentTaskConfig(null);
        }
        WebPageManager.getInstance().exitSession();
        IHummerCoreCallback iHummerCoreCallback = this.mHummerCoreCallback;
        if (iHummerCoreCallback != null) {
            iHummerCoreCallback.onCompletion(this.mHummerContext);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x018b, code lost:
    
        if (r1.equals(com.ap.zoloz.hummer.biz.HummerConstants.TASK_FINALIZE) == false) goto L70;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handleTask() {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ap.zoloz.hummer.common.HummerCore.handleTask():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTaskResult(int i2) {
        HummerContext hummerContext = this.mHummerContext;
        if (hummerContext == null) {
            return;
        }
        hummerContext.add(HummerConstants.CURRENT_TASK_NAME, "context", TAG);
        this.mHummerContext.add("nextIndex", "context", Integer.valueOf(i2));
        if (i2 == -1) {
            exit();
            return;
        }
        if (i2 != 0 && i2 >= -1) {
            this.mZorder = i2;
            handleTask();
        } else {
            this.mHummerContext.recordSystemError(TAG, HummerZCodeConstant.INCORRECT_TASK_INDEX_ERROR_CODE);
            AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
        }
    }

    public void forceQuit() {
        HummerLogger.i("HummerCore forceQuit");
        this.mZorder = 0;
        for (TaskTracker taskTracker : this.mTasks.values()) {
            HummerLogger.i("HummerCore forceQuit task");
            taskTracker.forceQuit();
        }
        this.mTasks.clear();
        HummerContext hummerContext = this.mHummerContext;
        if (hummerContext != null) {
            hummerContext.forceQuit();
        }
    }

    public TaskTracker getCurrentTask() {
        return this.mTasks.get(Integer.valueOf(this.mHummerContext.getCurrentTaskConfig().index));
    }

    public void release() {
        this.mZorder = 0;
        Iterator<TaskTracker> it = this.mTasks.values().iterator();
        while (it.hasNext()) {
            it.next().release();
        }
        this.mTasks.clear();
        HummerContext hummerContext = this.mHummerContext;
        if (hummerContext != null) {
            hummerContext.release();
            this.mHummerContext = null;
        }
        this.mHummerCoreCallback = null;
        this.mIAlertManagerCallback = null;
    }

    public void schedule(HummerContext hummerContext, IHummerCoreCallback iHummerCoreCallback, final boolean z) {
        this.mHummerContext = hummerContext;
        HummerContext hummerContext2 = this.mHummerContext;
        if (hummerContext2 != null) {
            hummerContext2.add(HummerConstants.CURRENT_TASK_NAME, "context", TAG);
        }
        this.mHummerCoreCallback = iHummerCoreCallback;
        this.mIAlertManagerCallback = new IAlertManagerCallback() { // from class: com.ap.zoloz.hummer.common.HummerCore.1
            @Override // com.ap.zoloz.hummer.common.IAlertManagerCallback
            public void onHandelNetworkError(boolean z2) {
                if (z2) {
                    HummerCore.this.finalizeHummer();
                    return;
                }
                if (HummerCore.this.mHummerContext != null) {
                    HummerResponse hummerResponse = new HummerResponse();
                    hummerResponse.hummerId = HummerCore.this.mHummerContext.mHummerId;
                    hummerResponse.code = 1003;
                    HummerCore.this.mHummerContext.add(HummerConstants.HUMMER_RESPONSE, "context", hummerResponse);
                    HummerCore.this.finish();
                }
            }

            @Override // com.ap.zoloz.hummer.common.IAlertManagerCallback
            public void onHandelSystemError() {
                if (z) {
                    HummerCore.this.cancel();
                }
            }
        };
        this.mZorder = this.mHummerContext.mClientConfig.clientStartIndex;
        handleTask();
    }
}
