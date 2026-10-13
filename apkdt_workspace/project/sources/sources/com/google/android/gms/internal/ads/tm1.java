package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tm1 implements bk1 {

    /* renamed from: a, reason: collision with root package name */
    private final un1 f9606a;

    /* renamed from: b, reason: collision with root package name */
    private final int f9607b;

    /* renamed from: c, reason: collision with root package name */
    private final qm1 f9608c = new qm1();

    /* renamed from: d, reason: collision with root package name */
    private final um1 f9609d = new um1();

    /* renamed from: e, reason: collision with root package name */
    private final vo1 f9610e = new vo1(32);

    /* renamed from: f, reason: collision with root package name */
    private final AtomicInteger f9611f = new AtomicInteger();

    /* renamed from: g, reason: collision with root package name */
    private wm1 f9612g;

    /* renamed from: h, reason: collision with root package name */
    private wm1 f9613h;

    /* renamed from: i, reason: collision with root package name */
    private zzgq f9614i;

    /* renamed from: j, reason: collision with root package name */
    private long f9615j;

    /* renamed from: k, reason: collision with root package name */
    private int f9616k;

    /* renamed from: l, reason: collision with root package name */
    private vm1 f9617l;

    public tm1(un1 un1Var) {
        this.f9606a = un1Var;
        this.f9607b = un1Var.b();
        int i2 = this.f9607b;
        this.f9616k = i2;
        this.f9612g = new wm1(0L, i2);
        this.f9613h = this.f9612g;
    }

    private final void g() {
        this.f9608c.b();
        wm1 wm1Var = this.f9612g;
        if (wm1Var.f10148c) {
            wm1 wm1Var2 = this.f9613h;
            boolean z = wm1Var2.f10148c;
            vn1[] vn1VarArr = new vn1[(z ? 1 : 0) + (((int) (wm1Var2.f10146a - wm1Var.f10146a)) / this.f9607b)];
            for (int i2 = 0; i2 < vn1VarArr.length; i2++) {
                vn1VarArr[i2] = wm1Var.f10149d;
                wm1Var = wm1Var.a();
            }
            this.f9606a.a(vn1VarArr);
        }
        this.f9612g = new wm1(0L, this.f9607b);
        this.f9613h = this.f9612g;
        this.f9615j = 0L;
        this.f9616k = this.f9607b;
        this.f9606a.zzm();
    }

    private final boolean h() {
        return this.f9611f.compareAndSet(0, 1);
    }

    private final void i() {
        if (this.f9611f.compareAndSet(1, 0)) {
            return;
        }
        g();
    }

    public final void a(boolean z) {
        int andSet = this.f9611f.getAndSet(z ? 0 : 2);
        g();
        this.f9608c.c();
        if (andSet == 2) {
            this.f9614i = null;
        }
    }

    public final long b() {
        return this.f9608c.a();
    }

    public final int c() {
        return this.f9608c.d();
    }

    public final boolean d() {
        return this.f9608c.e();
    }

    public final zzgq e() {
        return this.f9608c.f();
    }

    public final void f() {
        long g2 = this.f9608c.g();
        if (g2 != -1) {
            a(g2);
        }
    }

    public final void a() {
        if (this.f9611f.getAndSet(2) == 0) {
            g();
        }
    }

    public final boolean a(long j2, boolean z) {
        long a2 = this.f9608c.a(j2, z);
        if (a2 == -1) {
            return false;
        }
        a(a2);
        return true;
    }

    public final int a(mh1 mh1Var, hj1 hj1Var, boolean z, boolean z2, long j2) {
        int i2;
        int a2 = this.f9608c.a(mh1Var, hj1Var, z, z2, this.f9614i, this.f9609d);
        if (a2 == -5) {
            this.f9614i = mh1Var.f8140a;
            return -5;
        }
        if (a2 != -4) {
            if (a2 == -3) {
                return -3;
            }
            throw new IllegalStateException();
        }
        if (!hj1Var.c()) {
            if (hj1Var.f7092d < j2) {
                hj1Var.b(e.b.b.a.a.a.c.ALL_INT);
            }
            if (hj1Var.e()) {
                um1 um1Var = this.f9609d;
                long j3 = um1Var.f9775b;
                this.f9610e.a(1);
                a(j3, this.f9610e.f9967a, 1);
                long j4 = j3 + 1;
                byte b2 = this.f9610e.f9967a[0];
                boolean z3 = (b2 & 128) != 0;
                int i3 = b2 & Byte.MAX_VALUE;
                ej1 ej1Var = hj1Var.f7090b;
                if (ej1Var.f6444a == null) {
                    ej1Var.f6444a = new byte[16];
                }
                a(j4, hj1Var.f7090b.f6444a, i3);
                long j5 = j4 + i3;
                if (z3) {
                    this.f9610e.a(2);
                    a(j5, this.f9610e.f9967a, 2);
                    j5 += 2;
                    i2 = this.f9610e.h();
                } else {
                    i2 = 1;
                }
                int[] iArr = hj1Var.f7090b.f6447d;
                if (iArr == null || iArr.length < i2) {
                    iArr = new int[i2];
                }
                int[] iArr2 = iArr;
                int[] iArr3 = hj1Var.f7090b.f6448e;
                if (iArr3 == null || iArr3.length < i2) {
                    iArr3 = new int[i2];
                }
                int[] iArr4 = iArr3;
                if (z3) {
                    int i4 = i2 * 6;
                    this.f9610e.a(i4);
                    a(j5, this.f9610e.f9967a, i4);
                    j5 += i4;
                    this.f9610e.c(0);
                    for (int i5 = 0; i5 < i2; i5++) {
                        iArr2[i5] = this.f9610e.h();
                        iArr4[i5] = this.f9610e.o();
                    }
                } else {
                    iArr2[0] = 0;
                    iArr4[0] = um1Var.f9774a - ((int) (j5 - um1Var.f9775b));
                }
                ak1 ak1Var = um1Var.f9777d;
                ej1 ej1Var2 = hj1Var.f7090b;
                ej1Var2.a(i2, iArr2, iArr4, ak1Var.f5591b, ej1Var2.f6444a, ak1Var.f5590a);
                long j6 = um1Var.f9775b;
                int i6 = (int) (j5 - j6);
                um1Var.f9775b = j6 + i6;
                um1Var.f9774a -= i6;
            }
            hj1Var.d(this.f9609d.f9774a);
            um1 um1Var2 = this.f9609d;
            long j7 = um1Var2.f9775b;
            ByteBuffer byteBuffer = hj1Var.f7091c;
            int i7 = um1Var2.f9774a;
            a(j7);
            while (i7 > 0) {
                int i8 = (int) (j7 - this.f9612g.f10146a);
                int min = Math.min(i7, this.f9607b - i8);
                vn1 vn1Var = this.f9612g.f10149d;
                byteBuffer.put(vn1Var.f9958a, vn1Var.a(i8), min);
                j7 += min;
                i7 -= min;
                if (j7 == this.f9612g.f10147b) {
                    this.f9606a.a(vn1Var);
                    this.f9612g = this.f9612g.a();
                }
            }
            a(this.f9609d.f9776c);
        }
        return -4;
    }

    private final void a(long j2, byte[] bArr, int i2) {
        a(j2);
        int i3 = 0;
        while (i3 < i2) {
            int i4 = (int) (j2 - this.f9612g.f10146a);
            int min = Math.min(i2 - i3, this.f9607b - i4);
            vn1 vn1Var = this.f9612g.f10149d;
            System.arraycopy(vn1Var.f9958a, vn1Var.a(i4), bArr, i3, min);
            j2 += min;
            i3 += min;
            if (j2 == this.f9612g.f10147b) {
                this.f9606a.a(vn1Var);
                this.f9612g = this.f9612g.a();
            }
        }
    }

    private final void a(long j2) {
        while (true) {
            wm1 wm1Var = this.f9612g;
            if (j2 < wm1Var.f10147b) {
                return;
            }
            this.f9606a.a(wm1Var.f10149d);
            this.f9612g = this.f9612g.a();
        }
    }

    public final void a(vm1 vm1Var) {
        this.f9617l = vm1Var;
    }

    @Override // com.google.android.gms.internal.ads.bk1
    public final void a(zzgq zzgqVar) {
        if (zzgqVar == null) {
            zzgqVar = null;
        }
        boolean a2 = this.f9608c.a(zzgqVar);
        vm1 vm1Var = this.f9617l;
        if (vm1Var == null || !a2) {
            return;
        }
        vm1Var.a(zzgqVar);
    }

    @Override // com.google.android.gms.internal.ads.bk1
    public final int a(sj1 sj1Var, int i2, boolean z) {
        if (!h()) {
            int b2 = sj1Var.b(i2);
            if (b2 != -1) {
                return b2;
            }
            throw new EOFException();
        }
        try {
            int a2 = a(i2);
            vn1 vn1Var = this.f9613h.f10149d;
            int a3 = sj1Var.a(vn1Var.f9958a, vn1Var.a(this.f9616k), a2);
            if (a3 != -1) {
                this.f9616k += a3;
                this.f9615j += a3;
                return a3;
            }
            throw new EOFException();
        } finally {
            i();
        }
    }

    @Override // com.google.android.gms.internal.ads.bk1
    public final void a(vo1 vo1Var, int i2) {
        if (!h()) {
            vo1Var.d(i2);
            return;
        }
        while (i2 > 0) {
            int a2 = a(i2);
            vn1 vn1Var = this.f9613h.f10149d;
            vo1Var.a(vn1Var.f9958a, vn1Var.a(this.f9616k), a2);
            this.f9616k += a2;
            this.f9615j += a2;
            i2 -= a2;
        }
        i();
    }

    @Override // com.google.android.gms.internal.ads.bk1
    public final void a(long j2, int i2, int i3, int i4, ak1 ak1Var) {
        if (!h()) {
            this.f9608c.a(j2);
            return;
        }
        try {
            this.f9608c.a(j2, i2, this.f9615j - i3, i3, ak1Var);
        } finally {
            i();
        }
    }

    private final int a(int i2) {
        if (this.f9616k == this.f9607b) {
            this.f9616k = 0;
            wm1 wm1Var = this.f9613h;
            if (wm1Var.f10148c) {
                this.f9613h = wm1Var.f10150e;
            }
            wm1 wm1Var2 = this.f9613h;
            vn1 a2 = this.f9606a.a();
            wm1 wm1Var3 = new wm1(this.f9613h.f10147b, this.f9607b);
            wm1Var2.f10149d = a2;
            wm1Var2.f10150e = wm1Var3;
            wm1Var2.f10148c = true;
        }
        return Math.min(i2, this.f9607b - this.f9616k);
    }
}
