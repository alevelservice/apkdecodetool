package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class hf implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzayc f7053e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hf(zzayc zzaycVar) {
        this.f7053e = zzaycVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7053e.a("surfaceCreated", new String[0]);
    }
}
