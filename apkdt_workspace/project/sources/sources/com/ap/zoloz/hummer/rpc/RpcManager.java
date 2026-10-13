package com.ap.zoloz.hummer.rpc;

import android.content.DialogInterface;
import android.os.AsyncTask;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.security.bio.service.local.rpc.IRpcException;
import com.alipay.mobile.security.bio.utils.StringUtil;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.ap.zoloz.hummer.biz.HummerLogger;
import com.ap.zoloz.hummer.common.AlertManager;
import com.ap.zoloz.hummer.common.HummerContext;
import com.ap.zoloz.hummer.common.RecordManager;
import com.zoloz.zhub.common.factor.facade.HummerGWFacade;
import com.zoloz.zhub.common.factor.model.FactorNextRequest;
import com.zoloz.zhub.common.factor.model.FactorNextResponseInner;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class RpcManager {
    public static final String TAG = "RpcManager";
    private static RpcManager sInstance;
    private boolean isInited = false;
    private HummerGWFacade mHummerGWFacade;
    private IRpcCallback mIRpcCallback;
    private RpcChannel mRpcChannel;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class PureRpcTask extends AsyncTask<RpcRequest, Void, RpcResponse> {
        private PureRpcTask() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public RpcResponse doInBackground(RpcRequest... rpcRequestArr) {
            if (rpcRequestArr[0].showLoading) {
                AlertManager.getInstance().showProgressDialog("", false, new DialogInterface.OnCancelListener() { // from class: com.ap.zoloz.hummer.rpc.RpcManager.PureRpcTask.1
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                    }
                }, true);
            }
            return RpcManager.this.next(rpcRequestArr[0]);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(RpcResponse rpcResponse) {
            AlertManager.getInstance().dismissDialog();
            if (RpcManager.this.mIRpcCallback != null) {
                RpcManager.this.mIRpcCallback.onCompletion(rpcResponse);
            }
        }
    }

    public static RpcManager getInstance() {
        if (sInstance == null) {
            synchronized (RpcManager.class) {
                if (sInstance == null) {
                    sInstance = new RpcManager();
                }
            }
        }
        return sInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public RpcResponse next(RpcRequest rpcRequest) {
        RpcResponse rpcResponse = new RpcResponse();
        HummerLogger.i("RpcManager rpcRequest " + rpcRequest.toString());
        HummerLogger.i("RpcManager versionToken of request " + rpcRequest.factorNextRequest.versionToken);
        long currentTimeMillis = System.currentTimeMillis();
        HashMap hashMap = new HashMap();
        hashMap.put("nextIndex", Integer.toString(rpcRequest.factorNextRequest.nextIndex.intValue()));
        hashMap.put(HummerConstants.CURRENT_TASK_NAME, rpcRequest.currentTaskName);
        hashMap.put(HummerConstants.PAYLOAD, String.valueOf(JSON.toJSONString(rpcRequest.factorNextRequest).getBytes().length / 1024));
        RecordManager.getInstance().record(HummerConstants.ZTECH_NEXT_START, hashMap);
        try {
            if (this.mRpcChannel != null) {
                rpcResponse.factorNextResponse = this.mRpcChannel.next(rpcRequest.factorNextRequest, this.mHummerGWFacade);
            }
        } catch (Throwable th) {
            if (th instanceof IRpcException) {
                rpcResponse.exception = HummerConstants.NETWOTK_EXCEPTION;
                hashMap.clear();
                IRpcException iRpcException = (IRpcException) th;
                hashMap.put("rpcResultCode", Integer.toString(iRpcException.getCode()));
                hashMap.put(HummerConstants.RPC_ERROR_MSG, iRpcException.getMsg());
                hashMap.put("action", HummerConstants.HUMMER_NEXT);
                RecordManager.getInstance().record(HummerConstants.ZTECH_RPC_ERROR, hashMap);
                HummerLogger.e(th);
            } else {
                rpcResponse.exception = HummerConstants.NORMAL_EXCEPTION;
            }
        }
        boolean isNullorEmpty = StringUtil.isNullorEmpty(rpcResponse.exception);
        List<FactorNextResponseInner> list = rpcResponse.factorNextResponse.response;
        String str = (list == null || list.size() <= 0) ? "" : rpcResponse.factorNextResponse.response.get(0).retCode;
        hashMap.clear();
        hashMap.put("success", Boolean.toString(isNullorEmpty));
        hashMap.put(HummerConstants.CURRENT_TASK_NAME, rpcRequest.currentTaskName);
        hashMap.put(HummerConstants.BIZ_RESULT_CODE, str);
        hashMap.put("uploadTime", Long.toString(System.currentTimeMillis() - currentTimeMillis));
        RecordManager.getInstance().record(HummerConstants.ZTECH_NEXT_END, hashMap);
        HummerLogger.i("RpcManager rpcResponse = " + rpcResponse.toString());
        HummerLogger.i("RpcManager versionToken of response " + rpcResponse.factorNextResponse.versionToken);
        return rpcResponse;
    }

    public RpcRequest formatRequest(HummerContext hummerContext, int i2, boolean z) {
        if (hummerContext == null) {
            return null;
        }
        FactorNextRequest factorNextRequest = new FactorNextRequest();
        factorNextRequest.hummerId = hummerContext.mHummerId;
        factorNextRequest.bizId = Long.toString(System.currentTimeMillis());
        factorNextRequest.versionToken = String.valueOf(hummerContext.query(HummerConstants.VERSION_TOKEN));
        factorNextRequest.nextIndex = Integer.valueOf(i2);
        HashMap<String, Object> packageRPCArguments = hummerContext.packageRPCArguments();
        if (packageRPCArguments != null) {
            factorNextRequest.params = packageRPCArguments;
        }
        factorNextRequest.zStack = hummerContext.getZStack();
        RpcRequest rpcRequest = new RpcRequest();
        rpcRequest.factorNextRequest = factorNextRequest;
        rpcRequest.currentTaskName = (String) hummerContext.query(HummerConstants.CURRENT_TASK_NAME);
        rpcRequest.showLoading = z;
        return rpcRequest;
    }

    public void init(HummerGWFacade hummerGWFacade) {
        this.mHummerGWFacade = hummerGWFacade;
        this.mRpcChannel = new RpcChannel();
        this.isInited = true;
    }

    public void release() {
        if (sInstance != null) {
            this.isInited = false;
            sInstance = null;
            this.mIRpcCallback = null;
        }
    }

    public void sendRpc(IRpcCallback iRpcCallback, RpcRequest rpcRequest) {
        this.mIRpcCallback = iRpcCallback;
        if (!this.isInited) {
            IRpcCallback iRpcCallback2 = this.mIRpcCallback;
            if (iRpcCallback2 != null) {
                iRpcCallback2.onCompletion(null);
                return;
            }
            return;
        }
        new PureRpcTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, rpcRequest);
    }
}
