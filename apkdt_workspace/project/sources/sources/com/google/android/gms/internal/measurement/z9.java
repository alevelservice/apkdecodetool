package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class z9 implements f2<y9> {

    /* renamed from: f, reason: collision with root package name */
    private static z9 f12238f = new z9();

    /* renamed from: e, reason: collision with root package name */
    private final f2<y9> f12239e;

    private z9(f2<y9> f2Var) {
        this.f12239e = e2.a((f2) f2Var);
    }

    public static boolean a() {
        return ((y9) f12238f.get()).zzzm();
    }

    public static boolean b() {
        return ((y9) f12238f.get()).zzzn();
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final /* synthetic */ y9 get() {
        return this.f12239e.get();
    }

    public z9() {
        this(e2.a(new ba()));
    }
}
