package com.zoloz.webcontainer.n.a;

import android.os.Bundle;
import com.alibaba.fastjson.JSON;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.zoloz.webcontainer.q;

/* compiled from: H5PushPlugin.java */
/* loaded from: classes2.dex */
public class e extends com.zoloz.webcontainer.n.b {
    @Override // com.zoloz.webcontainer.n.d
    public String getJSApiName() {
        return "pushWindow";
    }

    @Override // com.zoloz.webcontainer.n.d
    public boolean handleBridgeEvent(com.zoloz.webcontainer.c.a aVar, com.zoloz.webcontainer.a.b bVar) {
        if (aVar == null) {
            return false;
        }
        if (aVar.b() != null) {
            String string = aVar.b().getString(HummerConstants.URL);
            Bundle bundle = (Bundle) JSON.parseObject(aVar.b().getJSONObject("param").toJSONString(), Bundle.class);
            String e2 = aVar.c().e();
            if (!string.startsWith("http")) {
                if (e2 != null) {
                    string = e2.substring(0, e2.lastIndexOf("/")) + "/" + string;
                } else {
                    com.zoloz.webcontainer.b.c("H5PushPlugin", "push window error url " + string);
                }
            }
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putString("sessionId", aVar.c().f());
            q.i().a(string, bundle);
        }
        return true;
    }
}
