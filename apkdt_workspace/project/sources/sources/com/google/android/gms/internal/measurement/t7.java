package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.t7;

/* loaded from: classes.dex */
public abstract class t7<M extends t7<M>> extends z7 {

    /* renamed from: b, reason: collision with root package name */
    protected v7 f12115b;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.z7
    public int a() {
        if (this.f12115b == null) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f12115b.b(); i3++) {
            i2 += this.f12115b.b(i3).a();
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.z7
    /* renamed from: c */
    public final /* synthetic */ z7 clone() {
        return (t7) clone();
    }

    @Override // com.google.android.gms.internal.measurement.z7
    public /* synthetic */ Object clone() {
        t7 t7Var = (t7) super.clone();
        x7.a(this, t7Var);
        return t7Var;
    }

    @Override // com.google.android.gms.internal.measurement.z7
    public void a(r7 r7Var) {
        if (this.f12115b == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f12115b.b(); i2++) {
            this.f12115b.b(i2).a(r7Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean a(o7 o7Var, int i2) {
        int a2 = o7Var.a();
        if (!o7Var.a(i2)) {
            return false;
        }
        int i3 = i2 >>> 3;
        b8 b8Var = new b8(i2, o7Var.a(a2, o7Var.a() - a2));
        u7 u7Var = null;
        v7 v7Var = this.f12115b;
        if (v7Var == null) {
            this.f12115b = new v7();
        } else {
            u7Var = v7Var.a(i3);
        }
        if (u7Var == null) {
            u7Var = new u7();
            this.f12115b.a(i3, u7Var);
        }
        u7Var.a(b8Var);
        return true;
    }
}
