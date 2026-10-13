package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.p4;

/* loaded from: classes.dex */
public class p4<M extends p4<M>> extends u4 {

    /* renamed from: f, reason: collision with root package name */
    protected r4 f11527f;

    @Override // com.google.android.gms.internal.clearcut.u4
    public void a(n4 n4Var) {
        if (this.f11527f == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f11527f.b(); i2++) {
            this.f11527f.a(i2).a(n4Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.clearcut.u4
    public int b() {
        if (this.f11527f != null) {
            for (int i2 = 0; i2 < this.f11527f.b(); i2++) {
                this.f11527f.a(i2).a();
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.clearcut.u4
    /* renamed from: c */
    public /* synthetic */ u4 clone() {
        return (p4) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.u4
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public M clone() {
        M m = (M) super.clone();
        t4.a(this, m);
        return m;
    }
}
