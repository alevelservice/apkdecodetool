package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class td1 extends uc1<td1> {

    /* renamed from: i, reason: collision with root package name */
    private static volatile td1[] f9551i;

    /* renamed from: c, reason: collision with root package name */
    public Integer f9552c = null;

    /* renamed from: d, reason: collision with root package name */
    public String f9553d = null;

    /* renamed from: e, reason: collision with root package name */
    public sd1 f9554e = null;

    /* renamed from: f, reason: collision with root package name */
    private int[] f9555f = id1.f7272a;

    /* renamed from: g, reason: collision with root package name */
    public gd1 f9556g = null;

    /* renamed from: h, reason: collision with root package name */
    public String[] f9557h = id1.f7274c;

    public td1() {
        this.f9710b = null;
        this.f5767a = -1;
    }

    public static td1[] d() {
        if (f9551i == null) {
            synchronized (yc1.f10539a) {
                if (f9551i == null) {
                    f9551i = new td1[0];
                }
            }
        }
        return f9551i;
    }

    @Override // com.google.android.gms.internal.ads.uc1, com.google.android.gms.internal.ads.bd1
    public final void a(sc1 sc1Var) {
        sc1Var.a(1, this.f9552c.intValue());
        String str = this.f9553d;
        if (str != null) {
            sc1Var.a(2, str);
        }
        sd1 sd1Var = this.f9554e;
        if (sd1Var != null) {
            sc1Var.a(3, sd1Var);
        }
        int[] iArr = this.f9555f;
        int i2 = 0;
        if (iArr != null && iArr.length > 0) {
            int i3 = 0;
            while (true) {
                int[] iArr2 = this.f9555f;
                if (i3 >= iArr2.length) {
                    break;
                }
                sc1Var.a(6, iArr2[i3]);
                i3++;
            }
        }
        gd1 gd1Var = this.f9556g;
        if (gd1Var != null && gd1Var != null) {
            sc1Var.a(8, gd1Var.zzab());
        }
        String[] strArr = this.f9557h;
        if (strArr != null && strArr.length > 0) {
            while (true) {
                String[] strArr2 = this.f9557h;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str2 = strArr2[i2];
                if (str2 != null) {
                    sc1Var.a(9, str2);
                }
                i2++;
            }
        }
        super.a(sc1Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.uc1, com.google.android.gms.internal.ads.bd1
    public final int c() {
        int[] iArr;
        int c2 = super.c() + sc1.c(1, this.f9552c.intValue());
        String str = this.f9553d;
        if (str != null) {
            c2 += sc1.b(2, str);
        }
        sd1 sd1Var = this.f9554e;
        if (sd1Var != null) {
            c2 += sc1.b(3, sd1Var);
        }
        int[] iArr2 = this.f9555f;
        int i2 = 0;
        if (iArr2 != null && iArr2.length > 0) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                iArr = this.f9555f;
                if (i3 >= iArr.length) {
                    break;
                }
                i4 += sc1.b(iArr[i3]);
                i3++;
            }
            c2 = c2 + i4 + (iArr.length * 1);
        }
        gd1 gd1Var = this.f9556g;
        if (gd1Var != null && gd1Var != null) {
            c2 += sc1.c(8, gd1Var.zzab());
        }
        String[] strArr = this.f9557h;
        if (strArr == null || strArr.length <= 0) {
            return c2;
        }
        int i5 = 0;
        int i6 = 0;
        while (true) {
            String[] strArr2 = this.f9557h;
            if (i2 >= strArr2.length) {
                return c2 + i5 + (i6 * 1);
            }
            String str2 = strArr2[i2];
            if (str2 != null) {
                i6++;
                i5 += sc1.a(str2);
            }
            i2++;
        }
    }
}
