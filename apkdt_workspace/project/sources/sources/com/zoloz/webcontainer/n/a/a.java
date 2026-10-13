package com.zoloz.webcontainer.n.a;

/* compiled from: H5HideBackPlugin.java */
/* loaded from: classes2.dex */
public class a extends com.zoloz.webcontainer.n.b {
    @Override // com.zoloz.webcontainer.n.d
    public String getJSApiName() {
        return "hideBackButton";
    }

    @Override // com.zoloz.webcontainer.n.d
    public boolean handleBridgeEvent(com.zoloz.webcontainer.c.a aVar, com.zoloz.webcontainer.a.b bVar) {
        if (aVar == null) {
            return false;
        }
        aVar.c().g();
        return true;
    }
}
