package com.alipay.iap.android.aplog.core.filter;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StrategyManager.java */
/* loaded from: classes.dex */
public class h implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    final /* synthetic */ g f3331e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g gVar) {
        this.f3331e = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        g.a(this.f3331e);
        this.f3331e.e();
    }
}
