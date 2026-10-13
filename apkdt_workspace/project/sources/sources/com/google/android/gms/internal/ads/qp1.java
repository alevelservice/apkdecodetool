package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.view.Surface;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qp1 {

    /* renamed from: a, reason: collision with root package name */
    private final Handler f8991a;

    /* renamed from: b, reason: collision with root package name */
    private final np1 f8992b;

    public qp1(Handler handler, np1 np1Var) {
        Handler handler2;
        if (np1Var != null) {
            no1.a(handler);
            handler2 = handler;
        } else {
            handler2 = null;
        }
        this.f8991a = handler2;
        this.f8992b = np1Var;
    }

    public final void a(fj1 fj1Var) {
        if (this.f8992b != null) {
            this.f8991a.post(new pp1(this, fj1Var));
        }
    }

    public final void b(fj1 fj1Var) {
        if (this.f8992b != null) {
            this.f8991a.post(new wp1(this, fj1Var));
        }
    }

    public final void a(String str, long j2, long j3) {
        if (this.f8992b != null) {
            this.f8991a.post(new sp1(this, str, j2, j3));
        }
    }

    public final void a(zzgq zzgqVar) {
        if (this.f8992b != null) {
            this.f8991a.post(new rp1(this, zzgqVar));
        }
    }

    public final void a(int i2, long j2) {
        if (this.f8992b != null) {
            this.f8991a.post(new vp1(this, i2, j2));
        }
    }

    public final void a(int i2, int i3, int i4, float f2) {
        if (this.f8992b != null) {
            this.f8991a.post(new up1(this, i2, i3, i4, f2));
        }
    }

    public final void a(Surface surface) {
        if (this.f8992b != null) {
            this.f8991a.post(new xp1(this, surface));
        }
    }
}
