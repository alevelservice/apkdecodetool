package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class nt1 extends uc1<nt1> {

    /* renamed from: c, reason: collision with root package name */
    public String f8432c = null;

    /* renamed from: d, reason: collision with root package name */
    public rt1 f8433d = null;

    public nt1() {
        this.f9710b = null;
        this.f5767a = -1;
    }

    @Override // com.google.android.gms.internal.ads.uc1, com.google.android.gms.internal.ads.bd1
    public final void a(sc1 sc1Var) {
        String str = this.f8432c;
        if (str != null) {
            sc1Var.a(1, str);
        }
        rt1 rt1Var = this.f8433d;
        if (rt1Var != null) {
            sc1Var.a(4, rt1Var);
        }
        super.a(sc1Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.uc1, com.google.android.gms.internal.ads.bd1
    public final int c() {
        int c2 = super.c();
        String str = this.f8432c;
        if (str != null) {
            c2 += sc1.b(1, str);
        }
        rt1 rt1Var = this.f8433d;
        return rt1Var != null ? c2 + sc1.b(4, rt1Var) : c2;
    }
}
