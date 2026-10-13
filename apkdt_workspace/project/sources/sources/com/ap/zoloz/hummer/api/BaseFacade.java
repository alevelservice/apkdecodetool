package com.ap.zoloz.hummer.api;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.alipay.mobile.security.bio.utils.StringUtil;
import com.alipay.mobile.security.zim.api.ZIMFacade;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.ap.zoloz.hummer.biz.HummerLogger;
import com.ap.zoloz.hummer.common.AlertManager;
import com.ap.zoloz.hummer.common.ClientConfig;
import com.ap.zoloz.hummer.common.HummerContext;
import com.ap.zoloz.hummer.common.HummerCore;
import com.ap.zoloz.hummer.common.RecordManager;
import com.ap.zoloz.hummer.common.TaskConfig;
import com.ap.zoloz.hummer.common.WebPageManager;
import com.ap.zoloz.hummer.rpc.RpcManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class BaseFacade {
    public static final String TAG = "BaseFacade";
    protected static boolean sIsBusy;
    protected HummerContext mHummerContext;
    protected HummerCore mHummerCore;

    public static String getMetaInfo(Context context) {
        try {
            return JSON.toJSONString(ZIMFacade.getZimMetaInfo(context, null));
        } catch (Throwable th) {
            HummerLogger.e(th);
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void customizeLocale(Map<String, Object> map) {
        if (map == null || !map.containsKey(HummerConstants.HUMMER_LOCALE)) {
            return;
        }
        String str = (String) map.get(HummerConstants.HUMMER_LOCALE);
        HashMap hashMap = new HashMap();
        hashMap.put(ZIMFacade.KEY_LOCALE, str);
        ZIMFacade.setEnv(hashMap);
        Resources resources = this.mHummerContext.mContext.getApplicationContext().getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        Configuration configuration = resources.getConfiguration();
        configuration.locale = new Locale(str);
        resources.updateConfiguration(configuration, displayMetrics);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean customizePublicKey(Map<String, Object> map) {
        if (map != null && map.containsKey(HummerConstants.PUBLIC_KEY)) {
            String str = (String) map.get(HummerConstants.PUBLIC_KEY);
            if (StringUtil.isNullorEmpty(str)) {
                return false;
            }
            HashMap hashMap = new HashMap();
            hashMap.put(ZIMFacade.KEY_PUBLIC_KEY_PROD, str);
            hashMap.put(ZIMFacade.KEY_PUBLIC_KEY_TEST, str);
            ZIMFacade.setEnv(hashMap);
        } else {
            String publicKey = getPublicKey(this.mHummerContext.mContext.getApplicationContext(), 0);
            String publicKey2 = getPublicKey(this.mHummerContext.mContext.getApplicationContext(), 1);
            if (StringUtil.isNullorEmpty(publicKey) || StringUtil.isNullorEmpty(publicKey2)) {
                return false;
            }
            HashMap hashMap2 = new HashMap();
            hashMap2.put(ZIMFacade.KEY_PUBLIC_KEY_PROD, publicKey);
            hashMap2.put(ZIMFacade.KEY_PUBLIC_KEY_TEST, publicKey2);
            ZIMFacade.setEnv(hashMap2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void forceQuit() {
        HummerLogger.i("BaseFacade forceQuit");
        HummerCore hummerCore = this.mHummerCore;
        if (hummerCore != null) {
            hummerCore.forceQuit();
        }
        HummerContext hummerContext = this.mHummerContext;
        if (hummerContext != null) {
            hummerContext.forceQuit();
        }
        RecordManager.getInstance().release();
    }

    protected String getPublicKey(Context context, int i2) {
        byte[] assetsData;
        try {
            if (i2 == 0) {
                assetsData = FileUtil.getAssetsData(context, "bid-log-key-public.key");
            } else {
                assetsData = FileUtil.getAssetsData(context, "bid-log-key-public_t.key");
            }
            return new String(assetsData);
        } catch (Exception e2) {
            HummerLogger.e(e2.toString());
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean parseConfig(String str) {
        ArrayList<TaskConfig> arrayList;
        if (this.mHummerCore != null && this.mHummerContext != null) {
            try {
                ClientConfig clientConfig = (ClientConfig) JSON.parseObject(str, ClientConfig.class);
                if (clientConfig == null) {
                    return false;
                }
                this.mHummerContext.setClientConfig(clientConfig);
                Map<String, Object> map = clientConfig.factorContext;
                if (map == null || map.size() == 0 || (arrayList = clientConfig.tasks) == null || arrayList.size() == 0 || clientConfig.clientStartIndex <= 0) {
                    return false;
                }
                this.mHummerContext.overwriteZStack(clientConfig.zStack);
                for (Map.Entry<String, Object> entry : clientConfig.factorContext.entrySet()) {
                    this.mHummerContext.add(entry.getKey(), HummerConstants.SERVER_CONFIG, entry.getValue());
                }
                HummerContext hummerContext = this.mHummerContext;
                hummerContext.add(HummerConstants.META_INFO, "context", getMetaInfo(hummerContext.mContext.getApplicationContext()));
                return true;
            } catch (Exception e2) {
                HummerLogger.e(e2.toString());
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean parseUIConfig(String str) {
        HummerContext hummerContext;
        if (this.mHummerCore != null && (hummerContext = this.mHummerContext) != null) {
            byte[] assetsData = FileUtil.getAssetsData(hummerContext.mContext.getApplicationContext().getResources(), str);
            if (assetsData == null) {
                return true;
            }
            TaskUIConfig taskUIConfig = (TaskUIConfig) JSON.parseObject(new String(assetsData), TaskUIConfig.class);
            if (taskUIConfig != null && taskUIConfig.tasks.size() > 0) {
                this.mHummerContext.setTaskUIConfig(taskUIConfig);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void release() {
        sIsBusy = false;
        AlertManager.getInstance().release();
        RpcManager.getInstance().release();
        RecordManager.getInstance().release();
        WebPageManager.getInstance().release();
        HummerCore hummerCore = this.mHummerCore;
        if (hummerCore != null) {
            hummerCore.release();
            this.mHummerCore = null;
        }
        HummerContext hummerContext = this.mHummerContext;
        if (hummerContext != null) {
            hummerContext.release();
            this.mHummerContext = null;
        }
    }

    public void setContext(Context context) {
        HummerContext hummerContext = this.mHummerContext;
        if (hummerContext != null) {
            hummerContext.mContext = context;
            AlertManager.getInstance().setContext(context);
        } else {
            HummerLogger.e("hummer context is null");
        }
    }
}
