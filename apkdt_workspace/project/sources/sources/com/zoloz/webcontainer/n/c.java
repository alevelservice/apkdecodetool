package com.zoloz.webcontainer.n;

import com.alibaba.fastjson.JSONObject;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.zoloz.webcontainer.c.a;
import com.zoloz.webcontainer.q;

/* compiled from: H5PopToPlugin.java */
/* loaded from: classes2.dex */
public class c extends b {
    @Override // com.zoloz.webcontainer.n.d
    public String getJSApiName() {
        return "popTo";
    }

    @Override // com.zoloz.webcontainer.n.d
    public boolean handleBridgeEvent(a aVar, com.zoloz.webcontainer.a.b bVar) {
        if (aVar == null) {
            return false;
        }
        JSONObject b2 = aVar.b();
        if (b2 == null) {
            return true;
        }
        int intValue = aVar.b().getIntValue(HummerConstants.INDEX);
        if (b2 != null && b2.containsKey(HummerConstants.INDEX)) {
            intValue = com.zoloz.webcontainer.p.b.a(b2, HummerConstants.INDEX, intValue);
        }
        q.i().c().a(aVar.c().f(), intValue);
        return true;
    }
}
