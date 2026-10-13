package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
final class id extends Thread {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f7270e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public id(jd jdVar, String str) {
        this.f7270e = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        new ud().a(this.f7270e);
    }
}
