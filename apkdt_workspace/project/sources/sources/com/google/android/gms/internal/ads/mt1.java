package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mt1 extends uc1<mt1> {

    /* renamed from: c, reason: collision with root package name */
    public Integer f8230c = null;

    /* renamed from: d, reason: collision with root package name */
    public ot1 f8231d = null;

    /* renamed from: e, reason: collision with root package name */
    private ss1[] f8232e = new ss1[0];

    /* renamed from: f, reason: collision with root package name */
    private qt1[] f8233f = qt1.d();

    public mt1() {
        this.f9710b = null;
        this.f5767a = -1;
    }

    @Override // com.google.android.gms.internal.ads.uc1, com.google.android.gms.internal.ads.bd1
    public final void a(sc1 sc1Var) {
        Integer num = this.f8230c;
        if (num != null) {
            sc1Var.a(7, num.intValue());
        }
        ot1 ot1Var = this.f8231d;
        if (ot1Var != null) {
            sc1Var.a(10, ot1Var);
        }
        ss1[] ss1VarArr = this.f8232e;
        int i2 = 0;
        if (ss1VarArr != null && ss1VarArr.length > 0) {
            int i3 = 0;
            while (true) {
                ss1[] ss1VarArr2 = this.f8232e;
                if (i3 >= ss1VarArr2.length) {
                    break;
                }
                ss1 ss1Var = ss1VarArr2[i3];
                if (ss1Var != null) {
                    sc1Var.a(11, ss1Var);
                }
                i3++;
            }
        }
        qt1[] qt1VarArr = this.f8233f;
        if (qt1VarArr != null && qt1VarArr.length > 0) {
            while (true) {
                qt1[] qt1VarArr2 = this.f8233f;
                if (i2 >= qt1VarArr2.length) {
                    break;
                }
                qt1 qt1Var = qt1VarArr2[i2];
                if (qt1Var != null) {
                    sc1Var.a(17, qt1Var);
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
        Integer num = this.f8230c;
        if (num != null) {
            c2 += sc1.c(7, num.intValue());
        }
        ot1 ot1Var = this.f8231d;
        if (ot1Var != null) {
            c2 += sc1.b(10, ot1Var);
        }
        ss1[] ss1VarArr = this.f8232e;
        int i2 = 0;
        if (ss1VarArr != null && ss1VarArr.length > 0) {
            int i3 = c2;
            int i4 = 0;
            while (true) {
                ss1[] ss1VarArr2 = this.f8232e;
                if (i4 >= ss1VarArr2.length) {
                    break;
                }
                ss1 ss1Var = ss1VarArr2[i4];
                if (ss1Var != null) {
                    i3 += m81.c(11, ss1Var);
                }
                i4++;
            }
            c2 = i3;
        }
        qt1[] qt1VarArr = this.f8233f;
        if (qt1VarArr != null && qt1VarArr.length > 0) {
            while (true) {
                qt1[] qt1VarArr2 = this.f8233f;
                if (i2 >= qt1VarArr2.length) {
                    break;
                }
                qt1 qt1Var = qt1VarArr2[i2];
                if (qt1Var != null) {
                    c2 += sc1.b(17, qt1Var);
                }
                i2++;
            }
        }
        return c2;
    }
}
