package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sd1 extends uc1<sd1> {

    /* renamed from: c, reason: collision with root package name */
    public dd1[] f9317c = new dd1[0];

    public sd1() {
        this.f9710b = null;
        this.f5767a = -1;
    }

    @Override // com.google.android.gms.internal.ads.uc1, com.google.android.gms.internal.ads.bd1
    public final void a(sc1 sc1Var) {
        dd1[] dd1VarArr = this.f9317c;
        if (dd1VarArr != null && dd1VarArr.length > 0) {
            int i2 = 0;
            while (true) {
                dd1[] dd1VarArr2 = this.f9317c;
                if (i2 >= dd1VarArr2.length) {
                    break;
                }
                dd1 dd1Var = dd1VarArr2[i2];
                if (dd1Var != null) {
                    sc1Var.a(2, dd1Var);
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
        dd1[] dd1VarArr = this.f9317c;
        if (dd1VarArr != null && dd1VarArr.length > 0) {
            int i2 = 0;
            while (true) {
                dd1[] dd1VarArr2 = this.f9317c;
                if (i2 >= dd1VarArr2.length) {
                    break;
                }
                dd1 dd1Var = dd1VarArr2[i2];
                if (dd1Var != null) {
                    c2 += m81.c(2, dd1Var);
                }
                i2++;
            }
        }
        return c2;
    }
}
