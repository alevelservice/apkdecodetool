package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vf implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private zzayc f9903e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f9904f = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public vf(zzayc zzaycVar) {
        this.f9903e = zzaycVar;
    }

    private final void c() {
        wa.f10063h.removeCallbacks(this);
        wa.f10063h.postDelayed(this, 250L);
    }

    public final void a() {
        this.f9904f = true;
        this.f9903e.zzwz();
    }

    public final void b() {
        this.f9904f = false;
        c();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f9904f) {
            return;
        }
        this.f9903e.zzwz();
        c();
    }
}
