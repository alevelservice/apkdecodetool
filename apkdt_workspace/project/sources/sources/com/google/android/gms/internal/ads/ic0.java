package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ic0 implements ot, qu {

    /* renamed from: f, reason: collision with root package name */
    private static final Object f7267f = new Object();

    /* renamed from: g, reason: collision with root package name */
    private static int f7268g;

    /* renamed from: e, reason: collision with root package name */
    private final oc0 f7269e;

    public ic0(oc0 oc0Var) {
        this.f7269e = oc0Var;
    }

    private static void a() {
        synchronized (f7267f) {
            f7268g++;
        }
    }

    private static boolean b() {
        boolean z;
        synchronized (f7267f) {
            z = f7268g < ((Integer) mu1.e().a(aw1.E3)).intValue();
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.ot
    public final void onAdFailedToLoad(int i2) {
        if (((Boolean) mu1.e().a(aw1.D3)).booleanValue() && b()) {
            this.f7269e.a(false);
            a();
        }
    }

    @Override // com.google.android.gms.internal.ads.qu
    public final void onAdLoaded() {
        if (((Boolean) mu1.e().a(aw1.D3)).booleanValue() && b()) {
            this.f7269e.a(true);
            a();
        }
    }
}
