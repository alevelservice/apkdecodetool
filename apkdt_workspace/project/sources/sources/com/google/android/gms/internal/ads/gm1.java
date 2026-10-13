package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gm1 implements km1, nm1 {

    /* renamed from: e, reason: collision with root package name */
    private final Uri f6933e;

    /* renamed from: f, reason: collision with root package name */
    private final zn1 f6934f;

    /* renamed from: g, reason: collision with root package name */
    private final uj1 f6935g;

    /* renamed from: h, reason: collision with root package name */
    private final int f6936h;

    /* renamed from: i, reason: collision with root package name */
    private final Handler f6937i;

    /* renamed from: j, reason: collision with root package name */
    private final jm1 f6938j;

    /* renamed from: k, reason: collision with root package name */
    private final xh1 f6939k = new xh1();

    /* renamed from: l, reason: collision with root package name */
    private final int f6940l;
    private nm1 m;
    private vh1 n;
    private boolean o;

    public gm1(Uri uri, zn1 zn1Var, uj1 uj1Var, int i2, Handler handler, jm1 jm1Var, String str, int i3) {
        this.f6933e = uri;
        this.f6934f = zn1Var;
        this.f6935g = uj1Var;
        this.f6936h = i2;
        this.f6937i = handler;
        this.f6938j = jm1Var;
        this.f6940l = i3;
    }

    @Override // com.google.android.gms.internal.ads.km1
    public final void a(zg1 zg1Var, boolean z, nm1 nm1Var) {
        this.m = nm1Var;
        this.n = new zm1(-9223372036854775807L, false);
        nm1Var.a(this.n, null);
    }

    @Override // com.google.android.gms.internal.ads.km1
    public final void b() {
    }

    @Override // com.google.android.gms.internal.ads.km1
    public final im1 a(int i2, un1 un1Var) {
        no1.a(i2 == 0);
        return new yl1(this.f6933e, this.f6934f.a(), this.f6935g.j(), this.f6936h, this.f6937i, this.f6938j, this, un1Var, null, this.f6940l);
    }

    @Override // com.google.android.gms.internal.ads.km1
    public final void a(im1 im1Var) {
        ((yl1) im1Var).b();
    }

    @Override // com.google.android.gms.internal.ads.km1
    public final void a() {
        this.m = null;
    }

    @Override // com.google.android.gms.internal.ads.nm1
    public final void a(vh1 vh1Var, Object obj) {
        boolean z = vh1Var.a(0, this.f6939k, false).f10360b != -9223372036854775807L;
        if (!this.o || z) {
            this.n = vh1Var;
            this.o = z;
            this.m.a(this.n, null);
        }
    }
}
