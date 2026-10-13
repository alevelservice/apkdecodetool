package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rd1 extends uc1<rd1> {

    /* renamed from: c, reason: collision with root package name */
    public fd1 f9096c = null;

    /* renamed from: d, reason: collision with root package name */
    public String f9097d = null;

    /* renamed from: e, reason: collision with root package name */
    public String f9098e = null;

    /* renamed from: f, reason: collision with root package name */
    public cd1 f9099f = null;

    /* renamed from: g, reason: collision with root package name */
    public td1[] f9100g = td1.d();

    /* renamed from: h, reason: collision with root package name */
    public String f9101h = null;

    /* renamed from: i, reason: collision with root package name */
    public ud1 f9102i = null;

    /* renamed from: j, reason: collision with root package name */
    private String[] f9103j;

    /* renamed from: k, reason: collision with root package name */
    public hd1 f9104k;

    /* renamed from: l, reason: collision with root package name */
    public String[] f9105l;
    public String[] m;

    public rd1() {
        String[] strArr = id1.f7274c;
        this.f9103j = strArr;
        this.f9104k = null;
        this.f9105l = strArr;
        this.m = strArr;
        this.f9710b = null;
        this.f5767a = -1;
    }

    @Override // com.google.android.gms.internal.ads.uc1, com.google.android.gms.internal.ads.bd1
    public final void a(sc1 sc1Var) {
        String str = this.f9097d;
        if (str != null) {
            sc1Var.a(1, str);
        }
        String str2 = this.f9098e;
        if (str2 != null) {
            sc1Var.a(2, str2);
        }
        td1[] td1VarArr = this.f9100g;
        int i2 = 0;
        if (td1VarArr != null && td1VarArr.length > 0) {
            int i3 = 0;
            while (true) {
                td1[] td1VarArr2 = this.f9100g;
                if (i3 >= td1VarArr2.length) {
                    break;
                }
                td1 td1Var = td1VarArr2[i3];
                if (td1Var != null) {
                    sc1Var.a(4, td1Var);
                }
                i3++;
            }
        }
        String[] strArr = this.f9103j;
        if (strArr != null && strArr.length > 0) {
            int i4 = 0;
            while (true) {
                String[] strArr2 = this.f9103j;
                if (i4 >= strArr2.length) {
                    break;
                }
                String str3 = strArr2[i4];
                if (str3 != null) {
                    sc1Var.a(6, str3);
                }
                i4++;
            }
        }
        fd1 fd1Var = this.f9096c;
        if (fd1Var != null && fd1Var != null) {
            sc1Var.a(10, fd1Var.zzab());
        }
        cd1 cd1Var = this.f9099f;
        if (cd1Var != null) {
            sc1Var.a(12, cd1Var);
        }
        String str4 = this.f9101h;
        if (str4 != null) {
            sc1Var.a(13, str4);
        }
        ud1 ud1Var = this.f9102i;
        if (ud1Var != null) {
            sc1Var.a(14, ud1Var);
        }
        hd1 hd1Var = this.f9104k;
        if (hd1Var != null) {
            sc1Var.a(17, hd1Var);
        }
        String[] strArr3 = this.f9105l;
        if (strArr3 != null && strArr3.length > 0) {
            int i5 = 0;
            while (true) {
                String[] strArr4 = this.f9105l;
                if (i5 >= strArr4.length) {
                    break;
                }
                String str5 = strArr4[i5];
                if (str5 != null) {
                    sc1Var.a(20, str5);
                }
                i5++;
            }
        }
        String[] strArr5 = this.m;
        if (strArr5 != null && strArr5.length > 0) {
            while (true) {
                String[] strArr6 = this.m;
                if (i2 >= strArr6.length) {
                    break;
                }
                String str6 = strArr6[i2];
                if (str6 != null) {
                    sc1Var.a(21, str6);
                }
                i2++;
            }
        }
        super.a(sc1Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.uc1, com.google.android.gms.internal.ads.bd1
    public final int c() {
        int c2 = super.c();
        String str = this.f9097d;
        if (str != null) {
            c2 += sc1.b(1, str);
        }
        String str2 = this.f9098e;
        if (str2 != null) {
            c2 += sc1.b(2, str2);
        }
        td1[] td1VarArr = this.f9100g;
        int i2 = 0;
        if (td1VarArr != null && td1VarArr.length > 0) {
            int i3 = c2;
            int i4 = 0;
            while (true) {
                td1[] td1VarArr2 = this.f9100g;
                if (i4 >= td1VarArr2.length) {
                    break;
                }
                td1 td1Var = td1VarArr2[i4];
                if (td1Var != null) {
                    i3 += sc1.b(4, td1Var);
                }
                i4++;
            }
            c2 = i3;
        }
        String[] strArr = this.f9103j;
        if (strArr != null && strArr.length > 0) {
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                String[] strArr2 = this.f9103j;
                if (i5 >= strArr2.length) {
                    break;
                }
                String str3 = strArr2[i5];
                if (str3 != null) {
                    i7++;
                    i6 += sc1.a(str3);
                }
                i5++;
            }
            c2 = c2 + i6 + (i7 * 1);
        }
        fd1 fd1Var = this.f9096c;
        if (fd1Var != null && fd1Var != null) {
            c2 += sc1.c(10, fd1Var.zzab());
        }
        cd1 cd1Var = this.f9099f;
        if (cd1Var != null) {
            c2 += m81.c(12, cd1Var);
        }
        String str4 = this.f9101h;
        if (str4 != null) {
            c2 += sc1.b(13, str4);
        }
        ud1 ud1Var = this.f9102i;
        if (ud1Var != null) {
            c2 += sc1.b(14, ud1Var);
        }
        hd1 hd1Var = this.f9104k;
        if (hd1Var != null) {
            c2 += m81.c(17, hd1Var);
        }
        String[] strArr3 = this.f9105l;
        if (strArr3 != null && strArr3.length > 0) {
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            while (true) {
                String[] strArr4 = this.f9105l;
                if (i8 >= strArr4.length) {
                    break;
                }
                String str5 = strArr4[i8];
                if (str5 != null) {
                    i10++;
                    i9 += sc1.a(str5);
                }
                i8++;
            }
            c2 = c2 + i9 + (i10 * 2);
        }
        String[] strArr5 = this.m;
        if (strArr5 == null || strArr5.length <= 0) {
            return c2;
        }
        int i11 = 0;
        int i12 = 0;
        while (true) {
            String[] strArr6 = this.m;
            if (i2 >= strArr6.length) {
                return c2 + i11 + (i12 * 2);
            }
            String str6 = strArr6[i2];
            if (str6 != null) {
                i12++;
                i11 += sc1.a(str6);
            }
            i2++;
        }
    }
}
