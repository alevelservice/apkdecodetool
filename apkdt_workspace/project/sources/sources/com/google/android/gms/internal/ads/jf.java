package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class jf implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ boolean f7473e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzayc f7474f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jf(zzayc zzaycVar, boolean z) {
        this.f7474f = zzaycVar;
        this.f7473e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7474f.a("windowVisibilityChanged", "isVisible", String.valueOf(this.f7473e));
    }
}
