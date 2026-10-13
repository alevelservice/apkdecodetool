package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class if1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ int f7281e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ boolean f7282f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ cf1 f7283g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public if1(cf1 cf1Var, int i2, boolean z) {
        this.f7283g = cf1Var;
        this.f7281e = i2;
        this.f7282f = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean a2;
        ev b2 = this.f7283g.b(this.f7281e, this.f7282f);
        this.f7283g.f6001j = b2;
        a2 = cf1.a(this.f7281e, b2);
        if (a2) {
            this.f7283g.a(this.f7281e + 1, this.f7282f);
        }
    }
}
