package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class gf implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzayc f6862e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gf(zzayc zzaycVar) {
        this.f6862e = zzaycVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6862e.a("surfaceDestroyed", new String[0]);
    }
}
