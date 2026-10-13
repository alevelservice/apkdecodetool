package com.zoloz.webcontainer.n.a;

import com.zoloz.webcontainer.m;
import com.zoloz.webcontainer.q;

/* compiled from: H5PopupPlugin.java */
/* loaded from: classes2.dex */
public class d extends com.zoloz.webcontainer.n.b {
    @Override // com.zoloz.webcontainer.n.d
    public String getJSApiName() {
        return "popWindow";
    }

    @Override // com.zoloz.webcontainer.n.d
    public boolean handleBridgeEvent(com.zoloz.webcontainer.c.a aVar, com.zoloz.webcontainer.a.b bVar) {
        if (aVar == null) {
            return false;
        }
        if (aVar.b() == null) {
            return true;
        }
        q.i().b(aVar.c().e());
        q.i().g().put(m.f16743a, aVar.b().toJSONString());
        return true;
    }
}
