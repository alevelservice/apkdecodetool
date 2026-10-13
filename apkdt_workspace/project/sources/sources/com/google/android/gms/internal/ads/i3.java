package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class i3 extends ke<p3> {

    /* renamed from: c, reason: collision with root package name */
    private final Object f7213c = new Object();

    /* renamed from: d, reason: collision with root package name */
    private final m3 f7214d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f7215e;

    public i3(m3 m3Var) {
        this.f7214d = m3Var;
    }

    public final void c() {
        synchronized (this.f7213c) {
            if (this.f7215e) {
                return;
            }
            this.f7215e = true;
            a(new h3(this), new ie());
            a(new k3(this), new j3(this));
        }
    }
}
