package com.zoloz.webcontainer.n.a;

/* compiled from: H5SetTitlePlugin.java */
/* loaded from: classes2.dex */
public class f extends com.zoloz.webcontainer.n.b {
    @Override // com.zoloz.webcontainer.n.d
    public String getJSApiName() {
        return "setTitle";
    }

    @Override // com.zoloz.webcontainer.n.d
    public boolean handleBridgeEvent(com.zoloz.webcontainer.c.a aVar, com.zoloz.webcontainer.a.b bVar) {
        if (aVar == null) {
            return false;
        }
        com.zoloz.webcontainer.r.a c2 = aVar.c();
        if (aVar.b() == null) {
            return true;
        }
        c2.a(aVar.b().getString("title"));
        return true;
    }
}
