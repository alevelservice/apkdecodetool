package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class j8 implements f2<i8> {

    /* renamed from: f, reason: collision with root package name */
    private static j8 f11933f = new j8();

    /* renamed from: e, reason: collision with root package name */
    private final f2<i8> f11934e;

    private j8(f2<i8> f2Var) {
        this.f11934e = e2.a((f2) f2Var);
    }

    public static boolean a() {
        return ((i8) f11933f.get()).zzxi();
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final /* synthetic */ i8 get() {
        return this.f11934e.get();
    }

    public j8() {
        this(e2.a(new l8()));
    }
}
