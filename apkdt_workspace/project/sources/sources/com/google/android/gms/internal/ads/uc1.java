package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.uc1;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class uc1<M extends uc1<M>> extends bd1 {

    /* renamed from: b, reason: collision with root package name */
    protected wc1 f9710b;

    @Override // com.google.android.gms.internal.ads.bd1
    public void a(sc1 sc1Var) {
        if (this.f9710b == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f9710b.a(); i2++) {
            this.f9710b.a(i2).a(sc1Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.bd1
    /* renamed from: b */
    public final /* synthetic */ bd1 clone() {
        return (uc1) clone();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.bd1
    public int c() {
        if (this.f9710b != null) {
            for (int i2 = 0; i2 < this.f9710b.a(); i2++) {
                this.f9710b.a(i2).a();
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.bd1
    public /* synthetic */ Object clone() {
        uc1 uc1Var = (uc1) super.clone();
        yc1.a(this, uc1Var);
        return uc1Var;
    }
}
