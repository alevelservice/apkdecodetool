package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ud1 extends uc1<ud1> {

    /* renamed from: c, reason: collision with root package name */
    public ed1 f9716c = null;

    /* renamed from: d, reason: collision with root package name */
    public String f9717d = null;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f9718e = null;

    public ud1() {
        this.f9710b = null;
        this.f5767a = -1;
    }

    @Override // com.google.android.gms.internal.ads.uc1, com.google.android.gms.internal.ads.bd1
    public final void a(sc1 sc1Var) {
        ed1 ed1Var = this.f9716c;
        if (ed1Var != null && ed1Var != null) {
            sc1Var.a(1, ed1Var.zzab());
        }
        String str = this.f9717d;
        if (str != null) {
            sc1Var.a(2, str);
        }
        byte[] bArr = this.f9718e;
        if (bArr != null) {
            sc1Var.a(3, bArr);
        }
        super.a(sc1Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.uc1, com.google.android.gms.internal.ads.bd1
    public final int c() {
        int c2 = super.c();
        ed1 ed1Var = this.f9716c;
        if (ed1Var != null && ed1Var != null) {
            c2 += sc1.c(1, ed1Var.zzab());
        }
        String str = this.f9717d;
        if (str != null) {
            c2 += sc1.b(2, str);
        }
        byte[] bArr = this.f9718e;
        return bArr != null ? c2 + sc1.a(3) + sc1.c(bArr.length) + bArr.length : c2;
    }
}
