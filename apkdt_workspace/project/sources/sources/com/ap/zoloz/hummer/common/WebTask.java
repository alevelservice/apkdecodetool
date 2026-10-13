package com.ap.zoloz.hummer.common;

import com.alipay.mobile.security.bio.utils.StringUtil;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.ap.zoloz.hummer.biz.HummerLogger;
import com.ap.zoloz.hummer.biz.HummerZCodeConstant;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class WebTask extends TaskTracker {
    private String url = "";

    @Override // com.ap.zoloz.hummer.common.TaskTracker
    public void forceQuit() {
        if (this.isLive) {
            HummerLogger.i("Webtask " + this.mTaskConfig.name + " forceQuit");
            HashMap hashMap = new HashMap();
            hashMap.put(HummerConstants.EXT_INFO, "exit " + this.mTaskConfig.name);
            RecordManager.getInstance().record("techSeed", hashMap);
            WebPageManager.getInstance().exitSession();
            this.isLive = false;
        }
    }

    public String getUrl() {
        return this.url;
    }

    public void handleResult(int i2, String str) {
        if (this.mTaskConfig == null || this.mHummerContext == null) {
            return;
        }
        HummerLogger.i("endWebTask result = " + i2);
        if (i2 == 0) {
            if (StringUtil.isNullorEmpty(str)) {
                this.mHummerContext.updateZStack(this.mTaskConfig.name, HummerZCodeConstant.END_WEBTASK_ERROR);
                this.mHummerContext.recordSystemError(this.mTaskConfig.name, HummerZCodeConstant.END_WEBTASK_ERROR);
                AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
                return;
            }
            i2 = this.mHummerContext.getNextIndex(str);
        }
        ITaskTrackerCallback iTaskTrackerCallback = this.mITaskTrackerCallback;
        if (iTaskTrackerCallback != null) {
            iTaskTrackerCallback.onCompletion(this.mHummerContext, i2);
        }
    }

    @Override // com.ap.zoloz.hummer.common.TaskTracker
    public void run(HummerContext hummerContext, TaskConfig taskConfig, ITaskTrackerCallback iTaskTrackerCallback) {
    }

    @Override // com.ap.zoloz.hummer.common.TaskTracker
    public void run(HummerContext hummerContext, final TaskConfig taskConfig, UIConfig uIConfig, ITaskTrackerCallback iTaskTrackerCallback) {
        this.mITaskTrackerCallback = iTaskTrackerCallback;
        this.mTaskConfig = taskConfig;
        this.isLive = true;
        if (taskConfig == null || hummerContext == null) {
            return;
        }
        this.mHummerContext = hummerContext;
        this.mHummerContext.add(HummerConstants.CURRENT_TASK_NAME, "context", taskConfig.name);
        this.mIAlertManagerCallback = new IAlertManagerCallback() { // from class: com.ap.zoloz.hummer.common.WebTask.1
            @Override // com.ap.zoloz.hummer.common.IAlertManagerCallback
            public void onHandelNetworkError(boolean z) {
            }

            @Override // com.ap.zoloz.hummer.common.IAlertManagerCallback
            public void onHandelSystemError() {
                WebTask webTask = WebTask.this;
                webTask.mITaskTrackerCallback.onCompletion(webTask.mHummerContext, ((Integer) taskConfig.navigateConfig.error.get(HummerConstants.INDEX)).intValue());
            }
        };
        if (!taskConfig.inputParams.containsKey(HummerConstants.URL)) {
            this.mHummerContext.updateZStack(taskConfig.name, HummerZCodeConstant.URL_PATTERN_ERROR_CODE);
            this.mHummerContext.recordSystemError(taskConfig.name, HummerZCodeConstant.URL_PATTERN_ERROR_CODE);
            AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
            return;
        }
        this.url = (String) this.mHummerContext.query(String.valueOf(((Map) taskConfig.inputParams.get(HummerConstants.URL)).get(HummerConstants.VALUE)));
        if (StringUtil.isNullorEmpty(this.url)) {
            this.mHummerContext.updateZStack(taskConfig.name, HummerZCodeConstant.URL_ERROR_CODE);
            this.mHummerContext.recordSystemError(taskConfig.name, HummerZCodeConstant.URL_ERROR_CODE);
            AlertManager.getInstance().alertSystemError(this.mIAlertManagerCallback);
        } else {
            if (WebPageManager.getInstance().isPageAlreadyExit(this.url)) {
                return;
            }
            HashMap<String, Object> hashMap = new HashMap<>();
            if (uIConfig != null && uIConfig.H5Config.size() > 0) {
                hashMap.putAll(uIConfig.H5Config);
            }
            hashMap.put(HummerConstants.URL, this.url);
            WebPageManager.getInstance().openUrl(hashMap);
        }
    }
}
