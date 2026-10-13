package com.zoloz.builder.plugin;

import com.alibaba.fastjson.JSONObject;
import com.ap.zoloz.hummer.biz.HummerLogger;
import com.ap.zoloz.hummer.h5.H5PluginHandler;
import com.ap.zoloz.hummer.h5.IH5HandlerCallback;
import com.zoloz.webcontainer.a.b;
import com.zoloz.webcontainer.c.a;
import com.zoloz.webcontainer.n.d;

/* loaded from: classes2.dex */
public class HummerFoundationLite implements d {
    public static final String HUMMER_FOUNDATION = "hummerFoundation";
    public static final String HUMMER_FOUNDATION_ACTION = "action";
    public static final String HUMMER_FOUNDATION_ALERT = "alert";
    public static final String HUMMER_FOUNDATION_CONTEXT = "paramkeys";
    public static final String HUMMER_FOUNDATION_DEL_PARAMS = "deleteParams";
    public static final String HUMMER_FOUNDATION_FORWARD_REQUEST = "forwardRequest";
    public static final String HUMMER_FOUNDATION_GET_PARAMS = "getParams";
    public static final String HUMMER_FOUNDATION_HIDE_LOADING = "hideLoading";
    public static final String HUMMER_FOUNDATION_LOG = "log";
    public static final String HUMMER_FOUNDATION_LOG_MESS = "logMessage";
    public static final String HUMMER_FOUNDATION_LOG_SEED_ID = "logSeedID";
    public static final String HUMMER_FOUNDATION_MESSAGE = "message";
    public static final String HUMMER_FOUNDATION_NEGATIVE = "negative";
    public static final String HUMMER_FOUNDATION_POSITIVE = "positive";
    public static final String HUMMER_FOUNDATION_RPC = "rpc";
    public static final String HUMMER_FOUNDATION_SET_PARAMS = "setParams";
    public static final String HUMMER_FOUNDATION_SHOW_LOADING = "showLoading";
    public static final String HUMMER_FOUNDATION_TITLE = "title";
    private static final String TAG = "HummerFoundationLite";
    public static final String ZIM_IDENTIFY = "zimIdentity";

    private void identify(a aVar, final b bVar) {
        if (aVar == null) {
            return;
        }
        new H5PluginHandler().identify(aVar.b(), aVar.e(), new IH5HandlerCallback() { // from class: com.zoloz.builder.plugin.HummerFoundationLite.1
            @Override // com.ap.zoloz.hummer.h5.IH5HandlerCallback
            public void onCompletion(JSONObject jSONObject) {
                bVar.a(jSONObject);
            }
        });
    }

    @Override // com.zoloz.webcontainer.n.d
    public String getJSApiName() {
        return "hummerFoundation";
    }

    @Override // com.zoloz.webcontainer.n.d
    public boolean handleBridgeEvent(a aVar, b bVar) {
        if (aVar == null) {
            return false;
        }
        HummerLogger.d(getJSApiName(), "bridge data " + aVar.toString());
        HummerLogger.i(TAG, " jsapi" + aVar.b().toJSONString());
        String a2 = aVar.a();
        if (!"hummerFoundation".equals(a2) && !"zimIdentity".equals(a2)) {
            return true;
        }
        identify(aVar, bVar);
        return true;
    }

    public void onRelease() {
    }
}
