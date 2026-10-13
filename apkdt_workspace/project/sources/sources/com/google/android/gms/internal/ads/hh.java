package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class hh implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ eh f7067e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hh(eh ehVar) {
        this.f7067e = ehVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.n.y().b(this.f7067e);
    }
}
