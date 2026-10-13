package com.google.android.gms.internal.ads;

import android.net.Uri;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class fm1 implements io1 {

    /* renamed from: a, reason: collision with root package name */
    private final Uri f6678a;

    /* renamed from: b, reason: collision with root package name */
    private final wn1 f6679b;

    /* renamed from: c, reason: collision with root package name */
    private final em1 f6680c;

    /* renamed from: d, reason: collision with root package name */
    private final po1 f6681d;

    /* renamed from: e, reason: collision with root package name */
    private final wj1 f6682e;

    /* renamed from: f, reason: collision with root package name */
    private volatile boolean f6683f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f6684g;

    /* renamed from: h, reason: collision with root package name */
    private long f6685h;

    /* renamed from: i, reason: collision with root package name */
    private long f6686i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ yl1 f6687j;

    public fm1(yl1 yl1Var, Uri uri, wn1 wn1Var, em1 em1Var, po1 po1Var) {
        this.f6687j = yl1Var;
        no1.a(uri);
        this.f6678a = uri;
        no1.a(wn1Var);
        this.f6679b = wn1Var;
        no1.a(em1Var);
        this.f6680c = em1Var;
        this.f6681d = po1Var;
        this.f6682e = new wj1();
        this.f6684g = true;
        this.f6686i = -1L;
    }

    public final void a(long j2, long j3) {
        this.f6682e.f10135a = j2;
        this.f6685h = j3;
        this.f6684g = true;
    }

    @Override // com.google.android.gms.internal.ads.io1
    public final void b() {
        this.f6683f = true;
    }

    @Override // com.google.android.gms.internal.ads.io1
    public final boolean c() {
        return this.f6683f;
    }

    @Override // com.google.android.gms.internal.ads.io1
    public final void a() {
        qj1 qj1Var;
        int i2 = 0;
        while (i2 == 0 && !this.f6683f) {
            try {
                long j2 = this.f6682e.f10135a;
                this.f6686i = this.f6679b.a(new bo1(this.f6678a, j2, -1L, yl1.f(this.f6687j)));
                if (this.f6686i != -1) {
                    this.f6686i += j2;
                }
                qj1Var = new qj1(this.f6679b, j2, this.f6686i);
                try {
                    pj1 a2 = this.f6680c.a(qj1Var, this.f6679b.getUri());
                    if (this.f6684g) {
                        a2.a(j2, this.f6685h);
                        this.f6684g = false;
                    }
                    while (i2 == 0 && !this.f6683f) {
                        this.f6681d.a();
                        i2 = a2.a(qj1Var, this.f6682e);
                        if (qj1Var.c() > yl1.g(this.f6687j) + j2) {
                            j2 = qj1Var.c();
                            this.f6681d.c();
                            yl1.i(this.f6687j).post(yl1.h(this.f6687j));
                        }
                    }
                    if (i2 == 1) {
                        i2 = 0;
                    } else {
                        this.f6682e.f10135a = qj1Var.c();
                    }
                    cp1.a(this.f6679b);
                } catch (Throwable th) {
                    th = th;
                    if (i2 != 1 && qj1Var != null) {
                        this.f6682e.f10135a = qj1Var.c();
                    }
                    cp1.a(this.f6679b);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                qj1Var = null;
            }
        }
    }
}
