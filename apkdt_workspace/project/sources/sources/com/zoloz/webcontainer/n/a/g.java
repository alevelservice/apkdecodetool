package com.zoloz.webcontainer.n.a;

/* compiled from: H5ShowBackPlugin.java */
/* loaded from: classes2.dex */
public class g extends com.zoloz.webcontainer.n.b {

    /* renamed from: a, reason: collision with root package name */
    private com.zoloz.webcontainer.r.a f16752a;

    @Override // com.zoloz.webcontainer.n.d
    public String getJSApiName() {
        return "hideShowButton";
    }

    @Override // com.zoloz.webcontainer.n.d
    public boolean handleBridgeEvent(com.zoloz.webcontainer.c.a aVar, com.zoloz.webcontainer.a.b bVar) {
        if (aVar == null) {
            return false;
        }
        this.f16752a = aVar.c();
        this.f16752a.g();
        return true;
    }
}
