package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class g00 implements oe1<x10> {

    /* renamed from: a, reason: collision with root package name */
    private final b00 f6769a;

    private g00(b00 b00Var) {
        this.f6769a = b00Var;
    }

    public static g00 a(b00 b00Var) {
        return new g00(b00Var);
    }

    public static x10 b(b00 b00Var) {
        x10 a2 = b00Var.a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return b(this.f6769a);
    }
}
