package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.d1;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class w2 implements g2 {

    /* renamed from: a, reason: collision with root package name */
    private final i2 f11587a;

    /* renamed from: b, reason: collision with root package name */
    private final x2 f11588b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w2(i2 i2Var, String str, Object[] objArr) {
        this.f11587a = i2Var;
        this.f11588b = new x2(i2Var.getClass(), str, objArr);
    }

    @Override // com.google.android.gms.internal.clearcut.g2
    public final int a() {
        int i2;
        i2 = this.f11588b.f11602d;
        return (i2 & 1) == 1 ? d1.e.f11398i : d1.e.f11399j;
    }

    @Override // com.google.android.gms.internal.clearcut.g2
    public final boolean b() {
        int i2;
        i2 = this.f11588b.f11602d;
        return (i2 & 2) == 2;
    }

    @Override // com.google.android.gms.internal.clearcut.g2
    public final i2 c() {
        return this.f11587a;
    }

    public final int d() {
        int i2;
        i2 = this.f11588b.f11603e;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final x2 e() {
        return this.f11588b;
    }

    public final int f() {
        int i2;
        i2 = this.f11588b.f11606h;
        return i2;
    }

    public final int g() {
        int i2;
        i2 = this.f11588b.f11607i;
        return i2;
    }

    public final int h() {
        int i2;
        i2 = this.f11588b.f11608j;
        return i2;
    }

    public final int i() {
        int i2;
        i2 = this.f11588b.m;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int[] j() {
        int[] iArr;
        iArr = this.f11588b.n;
        return iArr;
    }

    public final int k() {
        int i2;
        i2 = this.f11588b.f11610l;
        return i2;
    }

    public final int l() {
        int i2;
        i2 = this.f11588b.f11609k;
        return i2;
    }
}
