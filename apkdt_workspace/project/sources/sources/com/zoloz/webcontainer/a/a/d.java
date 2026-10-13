package com.zoloz.webcontainer.a.a;

/* compiled from: ZolozJSBridgeImpl.java */
/* loaded from: classes2.dex */
class d implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    final /* synthetic */ com.zoloz.webcontainer.j.b f16696e;

    /* renamed from: f, reason: collision with root package name */
    final /* synthetic */ String f16697f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(b bVar, com.zoloz.webcontainer.j.b bVar2, String str) {
        this.f16696e = bVar2;
        this.f16697f = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f16696e.f16724a.c().c().loadUrl("javascript:" + this.f16697f);
    }
}
