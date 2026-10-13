package com.google.android.gms.internal.measurement;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b3 {

    /* renamed from: a, reason: collision with root package name */
    private final i3 f11759a;

    /* renamed from: b, reason: collision with root package name */
    private final byte[] f11760b;

    private b3(int i2) {
        this.f11760b = new byte[i2];
        this.f11759a = i3.a(this.f11760b);
    }

    public final t2 a() {
        this.f11759a.c();
        return new d3(this.f11760b);
    }

    public final i3 b() {
        return this.f11759a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ b3(int i2, s2 s2Var) {
        this(i2);
    }
}
