package com.google.android.gms.internal.ads;

import android.os.Handler;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ci1 {

    /* renamed from: a, reason: collision with root package name */
    private final Handler f6028a;

    /* renamed from: b, reason: collision with root package name */
    private final di1 f6029b;

    public ci1(Handler handler, di1 di1Var) {
        Handler handler2;
        if (di1Var != null) {
            no1.a(handler);
            handler2 = handler;
        } else {
            handler2 = null;
        }
        this.f6028a = handler2;
        this.f6029b = di1Var;
    }

    public final void a(fj1 fj1Var) {
        if (this.f6029b != null) {
            this.f6028a.post(new fi1(this, fj1Var));
        }
    }

    public final void b(fj1 fj1Var) {
        if (this.f6029b != null) {
            this.f6028a.post(new ji1(this, fj1Var));
        }
    }

    public final void a(String str, long j2, long j3) {
        if (this.f6029b != null) {
            this.f6028a.post(new ei1(this, str, j2, j3));
        }
    }

    public final void a(zzgq zzgqVar) {
        if (this.f6029b != null) {
            this.f6028a.post(new hi1(this, zzgqVar));
        }
    }

    public final void a(int i2, long j2, long j3) {
        if (this.f6029b != null) {
            this.f6028a.post(new gi1(this, i2, j2, j3));
        }
    }

    public final void a(int i2) {
        if (this.f6029b != null) {
            this.f6028a.post(new ii1(this, i2));
        }
    }
}
