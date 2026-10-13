package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yl1 implements rj1, im1, vm1, go1<fm1> {
    private int A;
    private bn1 B;
    private long C;
    private boolean[] D;
    private boolean[] E;
    private boolean F;
    private long H;
    private int J;
    private boolean K;
    private boolean L;

    /* renamed from: e */
    private final Uri f10591e;

    /* renamed from: f */
    private final wn1 f10592f;

    /* renamed from: g */
    private final int f10593g;

    /* renamed from: h */
    private final Handler f10594h;

    /* renamed from: i */
    private final jm1 f10595i;

    /* renamed from: j */
    private final nm1 f10596j;

    /* renamed from: k */
    private final un1 f10597k;

    /* renamed from: l */
    private final String f10598l;
    private final long m;
    private final em1 o;
    private lm1 u;
    private zj1 v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;
    private final ho1 n = new ho1("Loader:ExtractorMediaPeriod");
    private final po1 p = new po1();
    private final Runnable q = new bm1(this);
    private final Runnable r = new am1(this);
    private final Handler s = new Handler();
    private long I = -9223372036854775807L;
    private final SparseArray<tm1> t = new SparseArray<>();
    private long G = -1;

    public yl1(Uri uri, wn1 wn1Var, pj1[] pj1VarArr, int i2, Handler handler, jm1 jm1Var, nm1 nm1Var, un1 un1Var, String str, int i3) {
        this.f10591e = uri;
        this.f10592f = wn1Var;
        this.f10593g = i2;
        this.f10594h = handler;
        this.f10595i = jm1Var;
        this.f10596j = nm1Var;
        this.f10597k = un1Var;
        this.f10598l = str;
        this.m = i3;
        this.o = new em1(pj1VarArr, this);
    }

    private final void d() {
        zj1 zj1Var;
        fm1 fm1Var = new fm1(this, this.f10591e, this.f10592f, this.o, this.p);
        if (this.x) {
            no1.b(h());
            long j2 = this.C;
            if (j2 != -9223372036854775807L && this.I >= j2) {
                this.K = true;
                this.I = -9223372036854775807L;
                return;
            } else {
                fm1Var.a(this.v.a(this.I), this.I);
                this.I = -9223372036854775807L;
            }
        }
        this.J = f();
        int i2 = this.f10593g;
        if (i2 == -1) {
            i2 = (this.x && this.G == -1 && ((zj1Var = this.v) == null || zj1Var.c() == -9223372036854775807L)) ? 6 : 3;
        }
        this.n.a(fm1Var, this, i2);
    }

    public final void e() {
        if (this.L || this.x || this.v == null || !this.w) {
            return;
        }
        int size = this.t.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.t.valueAt(i2).e() == null) {
                return;
            }
        }
        this.p.c();
        cn1[] cn1VarArr = new cn1[size];
        this.E = new boolean[size];
        this.D = new boolean[size];
        this.C = this.v.c();
        int i3 = 0;
        while (true) {
            boolean z = true;
            if (i3 < size) {
                zzgq e2 = this.t.valueAt(i3).e();
                cn1VarArr[i3] = new cn1(e2);
                String str = e2.f11193j;
                if (!qo1.b(str) && !qo1.a(str)) {
                    z = false;
                }
                this.E[i3] = z;
                this.F = z | this.F;
                i3++;
            } else {
                this.B = new bn1(cn1VarArr);
                this.x = true;
                this.f10596j.a(new zm1(this.C, this.v.b()), null);
                this.u.a((im1) this);
                return;
            }
        }
    }

    private final int f() {
        int size = this.t.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += this.t.valueAt(i3).c();
        }
        return i2;
    }

    private final long g() {
        int size = this.t.size();
        long j2 = Long.MIN_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            j2 = Math.max(j2, this.t.valueAt(i2).b());
        }
        return j2;
    }

    private final boolean h() {
        return this.I != -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.im1
    public final bn1 X() {
        return this.B;
    }

    @Override // com.google.android.gms.internal.ads.im1, com.google.android.gms.internal.ads.xm1
    public final long Y() {
        if (this.A == 0) {
            return Long.MIN_VALUE;
        }
        return a0();
    }

    @Override // com.google.android.gms.internal.ads.im1
    public final long Z() {
        if (!this.z) {
            return -9223372036854775807L;
        }
        this.z = false;
        return this.H;
    }

    @Override // com.google.android.gms.internal.ads.im1
    public final void a(lm1 lm1Var, long j2) {
        this.u = lm1Var;
        this.p.b();
        d();
    }

    @Override // com.google.android.gms.internal.ads.im1
    public final long a0() {
        long g2;
        if (this.K) {
            return Long.MIN_VALUE;
        }
        if (h()) {
            return this.I;
        }
        if (this.F) {
            g2 = Long.MAX_VALUE;
            int size = this.t.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.E[i2]) {
                    g2 = Math.min(g2, this.t.valueAt(i2).b());
                }
            }
        } else {
            g2 = g();
        }
        return g2 == Long.MIN_VALUE ? this.H : g2;
    }

    public final void b() {
        this.n.a(new dm1(this, this.o));
        this.s.removeCallbacksAndMessages(null);
        this.L = true;
    }

    @Override // com.google.android.gms.internal.ads.im1
    public final void b0() {
        this.n.a(e.b.b.a.a.a.c.ALL_INT);
    }

    public final void c() {
        this.n.a(e.b.b.a.a.a.c.ALL_INT);
    }

    @Override // com.google.android.gms.internal.ads.im1
    public final void c(long j2) {
    }

    @Override // com.google.android.gms.internal.ads.im1
    public final long a(on1[] on1VarArr, boolean[] zArr, ym1[] ym1VarArr, boolean[] zArr2, long j2) {
        int i2;
        no1.b(this.x);
        for (int i3 = 0; i3 < on1VarArr.length; i3++) {
            if (ym1VarArr[i3] != null && (on1VarArr[i3] == null || !zArr[i3])) {
                i2 = ((hm1) ym1VarArr[i3]).f7118a;
                no1.b(this.D[i2]);
                this.A--;
                this.D[i2] = false;
                this.t.valueAt(i2).a();
                ym1VarArr[i3] = null;
            }
        }
        boolean z = false;
        for (int i4 = 0; i4 < on1VarArr.length; i4++) {
            if (ym1VarArr[i4] == null && on1VarArr[i4] != null) {
                on1 on1Var = on1VarArr[i4];
                no1.b(on1Var.length() == 1);
                no1.b(on1Var.b(0) == 0);
                int a2 = this.B.a(on1Var.a());
                no1.b(!this.D[a2]);
                this.A++;
                this.D[a2] = true;
                ym1VarArr[i4] = new hm1(this, a2);
                zArr2[i4] = true;
                z = true;
            }
        }
        if (!this.y) {
            int size = this.t.size();
            for (int i5 = 0; i5 < size; i5++) {
                if (!this.D[i5]) {
                    this.t.valueAt(i5).a();
                }
            }
        }
        if (this.A == 0) {
            this.z = false;
            if (this.n.a()) {
                this.n.b();
            }
        } else if (!this.y ? j2 != 0 : z) {
            j2 = b(j2);
            for (int i6 = 0; i6 < ym1VarArr.length; i6++) {
                if (ym1VarArr[i6] != null) {
                    zArr2[i6] = true;
                }
            }
        }
        this.y = true;
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.im1
    public final long b(long j2) {
        if (!this.v.b()) {
            j2 = 0;
        }
        this.H = j2;
        int size = this.t.size();
        boolean z = !h();
        for (int i2 = 0; z && i2 < size; i2++) {
            if (this.D[i2]) {
                z = this.t.valueAt(i2).a(j2, false);
            }
        }
        if (!z) {
            this.I = j2;
            this.K = false;
            if (this.n.a()) {
                this.n.b();
            } else {
                for (int i3 = 0; i3 < size; i3++) {
                    this.t.valueAt(i3).a(this.D[i3]);
                }
            }
        }
        this.z = false;
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.im1, com.google.android.gms.internal.ads.xm1
    public final boolean a(long j2) {
        if (this.K) {
            return false;
        }
        if (this.x && this.A == 0) {
            return false;
        }
        boolean b2 = this.p.b();
        if (this.n.a()) {
            return b2;
        }
        d();
        return true;
    }

    public final boolean a(int i2) {
        if (this.K) {
            return true;
        }
        return !h() && this.t.valueAt(i2).d();
    }

    public final int a(int i2, mh1 mh1Var, hj1 hj1Var, boolean z) {
        if (this.z || h()) {
            return -3;
        }
        return this.t.valueAt(i2).a(mh1Var, hj1Var, z, this.K, this.H);
    }

    public final void a(int i2, long j2) {
        tm1 valueAt = this.t.valueAt(i2);
        if (this.K && j2 > valueAt.b()) {
            valueAt.f();
        } else {
            valueAt.a(j2, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.rj1
    public final bk1 a(int i2, int i3) {
        tm1 tm1Var = this.t.get(i2);
        if (tm1Var != null) {
            return tm1Var;
        }
        tm1 tm1Var2 = new tm1(this.f10597k);
        tm1Var2.a(this);
        this.t.put(i2, tm1Var2);
        return tm1Var2;
    }

    @Override // com.google.android.gms.internal.ads.rj1
    public final void a() {
        this.w = true;
        this.s.post(this.q);
    }

    @Override // com.google.android.gms.internal.ads.rj1
    public final void a(zj1 zj1Var) {
        this.v = zj1Var;
        this.s.post(this.q);
    }

    @Override // com.google.android.gms.internal.ads.vm1
    public final void a(zzgq zzgqVar) {
        this.s.post(this.q);
    }

    private final void a(fm1 fm1Var) {
        long j2;
        if (this.G == -1) {
            j2 = fm1Var.f6686i;
            this.G = j2;
        }
    }

    @Override // com.google.android.gms.internal.ads.go1
    public final /* synthetic */ int a(fm1 fm1Var, long j2, long j3, IOException iOException) {
        zj1 zj1Var;
        fm1 fm1Var2 = fm1Var;
        a(fm1Var2);
        Handler handler = this.f10594h;
        if (handler != null && this.f10595i != null) {
            handler.post(new cm1(this, iOException));
        }
        if (iOException instanceof en1) {
            return 3;
        }
        boolean z = f() > this.J;
        if (this.G == -1 && ((zj1Var = this.v) == null || zj1Var.c() == -9223372036854775807L)) {
            this.H = 0L;
            this.z = this.x;
            int size = this.t.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.t.valueAt(i2).a(!this.x || this.D[i2]);
            }
            fm1Var2.a(0L, 0L);
        }
        this.J = f();
        return z ? 1 : 0;
    }

    @Override // com.google.android.gms.internal.ads.go1
    public final /* synthetic */ void a(fm1 fm1Var, long j2, long j3, boolean z) {
        a(fm1Var);
        if (z || this.A <= 0) {
            return;
        }
        int size = this.t.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.t.valueAt(i2).a(this.D[i2]);
        }
        this.u.a((lm1) this);
    }

    @Override // com.google.android.gms.internal.ads.go1
    public final /* synthetic */ void a(fm1 fm1Var, long j2, long j3) {
        a(fm1Var);
        this.K = true;
        if (this.C == -9223372036854775807L) {
            long g2 = g();
            this.C = g2 == Long.MIN_VALUE ? 0L : g2 + 10000;
            this.f10596j.a(new zm1(this.C, this.v.b()), null);
        }
        this.u.a((lm1) this);
    }
}
