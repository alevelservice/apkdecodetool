package com.zoloz.builder.service;

import android.os.Bundle;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.ap.zoloz.hummer.common.BaseWebService;
import com.zoloz.webcontainer.q;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class WebServiceProxy extends BaseWebService {
    public static final String SESSION_ID = "session_zbase_demo";

    @Override // com.ap.zoloz.hummer.common.BaseWebService
    public void exitPage(String str) {
        q.i().b(str);
    }

    @Override // com.ap.zoloz.hummer.common.BaseWebService
    public void exitSession() {
        q.i().d(SESSION_ID);
    }

    @Override // com.ap.zoloz.hummer.common.BaseWebService
    public boolean isPageAlreadyExit(String str) {
        return q.i().c(str);
    }

    @Override // com.ap.zoloz.hummer.common.BaseWebService
    public void openPage(HashMap<String, Object> hashMap) {
        Bundle bundle = new Bundle();
        bundle.putString("sessionId", SESSION_ID);
        bundle.putString("landscape", (String) hashMap.get("landscape"));
        for (Map.Entry<String, Object> entry : hashMap.entrySet()) {
            bundle.putString(entry.getKey(), String.valueOf(entry.getValue()));
        }
        q.i().a(null, (String) bundle.get(HummerConstants.URL), bundle);
    }
}
