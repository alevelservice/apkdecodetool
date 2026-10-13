package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pt1 extends uc1<pt1> {

    /* renamed from: c, reason: collision with root package name */
    public String f8781c = null;

    /* renamed from: d, reason: collision with root package name */
    public long[] f8782d = id1.f7273b;

    /* renamed from: e, reason: collision with root package name */
    public nt1 f8783e = null;

    /* renamed from: f, reason: collision with root package name */
    public mt1 f8784f = null;

    /* renamed from: g, reason: collision with root package name */
    public us1 f8785g = null;

    /* renamed from: h, reason: collision with root package name */
    public ws1 f8786h = null;

    public pt1() {
        this.f9710b = null;
        this.f5767a = -1;
    }

    @Override // com.google.android.gms.internal.ads.uc1, com.google.android.gms.internal.ads.bd1
    public final void a(sc1 sc1Var) {
        String str = this.f8781c;
        if (str != null) {
            sc1Var.a(10, str);
        }
        long[] jArr = this.f8782d;
        if (jArr != null && jArr.length > 0) {
            int i2 = 0;
            while (true) {
                long[] jArr2 = this.f8782d;
                if (i2 >= jArr2.length) {
                    break;
                }
                long j2 = jArr2[i2];
                sc1Var.b(14, 0);
                sc1Var.a(j2);
                i2++;
            }
        }
        nt1 nt1Var = this.f8783e;
        if (nt1Var != null) {
            sc1Var.a(15, nt1Var);
        }
        mt1 mt1Var = this.f8784f;
        if (mt1Var != null) {
            sc1Var.a(18, mt1Var);
        }
        us1 us1Var = this.f8785g;
        if (us1Var != null) {
            sc1Var.a(19, us1Var);
        }
        ws1 ws1Var = this.f8786h;
        if (ws1Var != null) {
            sc1Var.a(20, ws1Var);
        }
        super.a(sc1Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.uc1, com.google.android.gms.internal.ads.bd1
    public final int c() {
        long[] jArr;
        int c2 = super.c();
        String str = this.f8781c;
        if (str != null) {
            c2 += sc1.b(10, str);
        }
        long[] jArr2 = this.f8782d;
        if (jArr2 != null && jArr2.length > 0) {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                jArr = this.f8782d;
                if (i2 >= jArr.length) {
                    break;
                }
                long j2 = jArr[i2];
                i3 += ((-128) & j2) == 0 ? 1 : ((-16384) & j2) == 0 ? 2 : ((-2097152) & j2) == 0 ? 3 : ((-268435456) & j2) == 0 ? 4 : ((-34359738368L) & j2) == 0 ? 5 : ((-4398046511104L) & j2) == 0 ? 6 : ((-562949953421312L) & j2) == 0 ? 7 : ((-72057594037927936L) & j2) == 0 ? 8 : (Long.MIN_VALUE & j2) == 0 ? 9 : 10;
                i2++;
            }
            c2 = c2 + i3 + (jArr.length * 1);
        }
        nt1 nt1Var = this.f8783e;
        if (nt1Var != null) {
            c2 += sc1.b(15, nt1Var);
        }
        mt1 mt1Var = this.f8784f;
        if (mt1Var != null) {
            c2 += sc1.b(18, mt1Var);
        }
        us1 us1Var = this.f8785g;
        if (us1Var != null) {
            c2 += m81.c(19, us1Var);
        }
        ws1 ws1Var = this.f8786h;
        return ws1Var != null ? c2 + m81.c(20, ws1Var) : c2;
    }
}
