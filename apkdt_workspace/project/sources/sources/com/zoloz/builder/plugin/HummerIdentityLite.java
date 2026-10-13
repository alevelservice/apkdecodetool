package com.zoloz.builder.plugin;

import android.os.Handler;
import android.os.Looper;
import com.alibaba.fastjson.JSONObject;
import com.ap.zoloz.hummer.biz.HummerLogger;
import com.ap.zoloz.hummer.h5.H5PluginHandler;
import com.ap.zoloz.hummer.h5.IH5HandlerCallback;
import com.zoloz.webcontainer.a.b;
import com.zoloz.webcontainer.c.a;
import com.zoloz.webcontainer.n.d;

/* loaded from: classes2.dex */
public class HummerIdentityLite implements d {
    public static final String HUMMER_FOUNDATION = "hummerFoundation";
    public static final String HUMMER_FOUNDATION_ACTION = "action";
    public static final String TAG = "HummerIdentity";
    public static final String ZIM_IDENTIFY = "zimIdentity";
    public static final String ZIM_IDENTIFY_ACTION = "action";
    public static final String ZIM_IDENTIFY_BIZCONFIG = "bizParam";
    public static final String ZIM_IDENTIFY_CONTEXT = "context";
    public static final String ZIM_IDENTIFY_EKYCID = "ekycId";
    public static final String ZIM_IDENTIFY_EKYCONFIG = "ekycConfig";
    public static final String ZIM_IDENTIFY_END_WEB_TASK = "endWebTask";
    private static final String ZIM_IDENTIFY_GET_META_INFO = "getMetaInfo";
    public static final String ZIM_IDENTIFY_START_EKYC = "startEkyc";
    private final Handler handler = new Handler(Looper.getMainLooper());

    private void identify(a aVar, final b bVar) {
        if (aVar == null) {
            return;
        }
        new H5PluginHandler().identify(aVar.b(), aVar.e(), new IH5HandlerCallback() { // from class: com.zoloz.builder.plugin.HummerIdentityLite.1
            @Override // com.ap.zoloz.hummer.h5.IH5HandlerCallback
            public void onCompletion(JSONObject jSONObject) {
                bVar.a(jSONObject);
            }
        });
    }

    @Override // com.zoloz.webcontainer.n.d
    public String getJSApiName() {
        return "zimIdentity";
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
