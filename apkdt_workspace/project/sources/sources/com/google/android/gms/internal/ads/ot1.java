package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ot1 extends uc1<ot1> {

    /* renamed from: c, reason: collision with root package name */
    public String f8595c = null;

    /* renamed from: d, reason: collision with root package name */
    private ss1[] f8596d = new ss1[0];

    public ot1() {
        this.f9710b = null;
        this.f5767a = -1;
    }

    @Override // com.google.android.gms.internal.ads.uc1, com.google.android.gms.internal.ads.bd1
    public final void a(sc1 sc1Var) {
        String str = this.f8595c;
        if (str != null) {
            sc1Var.a(1, str);
        }
        ss1[] ss1VarArr = this.f8596d;
        if (ss1VarArr != null && ss1VarArr.length > 0) {
            int i2 = 0;
            while (true) {
                ss1[] ss1VarArr2 = this.f8596d;
                if (i2 >= ss1VarArr2.length) {
                    break;
                }
                ss1 ss1Var = ss1VarArr2[i2];
                if (ss1Var != null) {
                    sc1Var.a(2, ss1Var);
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
        String str = this.f8595c;
        if (str != null) {
            c2 += sc1.b(1, str);
        }
        ss1[] ss1VarArr = this.f8596d;
        if (ss1VarArr != null && ss1VarArr.length > 0) {
            int i2 = 0;
            while (true) {
                ss1[] ss1VarArr2 = this.f8596d;
                if (i2 >= ss1VarArr2.length) {
                    break;
                }
                ss1 ss1Var = ss1VarArr2[i2];
                if (ss1Var != null) {
                    c2 += m81.c(2, ss1Var);
                }
                i2++;
            }
        }
        return c2;
    }
}
