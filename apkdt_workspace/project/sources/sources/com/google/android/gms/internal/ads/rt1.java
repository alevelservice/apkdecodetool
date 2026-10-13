package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rt1 extends uc1<rt1> {

    /* renamed from: c, reason: collision with root package name */
    public Integer f9229c = null;

    /* renamed from: d, reason: collision with root package name */
    public Integer f9230d = null;

    /* renamed from: e, reason: collision with root package name */
    public Integer f9231e = null;

    public rt1() {
        this.f9710b = null;
        this.f5767a = -1;
    }

    @Override // com.google.android.gms.internal.ads.uc1, com.google.android.gms.internal.ads.bd1
    public final void a(sc1 sc1Var) {
        Integer num = this.f9229c;
        if (num != null) {
            sc1Var.a(1, num.intValue());
        }
        Integer num2 = this.f9230d;
        if (num2 != null) {
            sc1Var.a(2, num2.intValue());
        }
        Integer num3 = this.f9231e;
        if (num3 != null) {
            sc1Var.a(3, num3.intValue());
        }
        super.a(sc1Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.uc1, com.google.android.gms.internal.ads.bd1
    public final int c() {
        int c2 = super.c();
        Integer num = this.f9229c;
        if (num != null) {
            c2 += sc1.c(1, num.intValue());
        }
        Integer num2 = this.f9230d;
        if (num2 != null) {
            c2 += sc1.c(2, num2.intValue());
        }
        Integer num3 = this.f9231e;
        return num3 != null ? c2 + sc1.c(3, num3.intValue()) : c2;
    }
}
