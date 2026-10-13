package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class ya implements f2<bb> {

    /* renamed from: f, reason: collision with root package name */
    private static ya f12223f = new ya();

    /* renamed from: e, reason: collision with root package name */
    private final f2<bb> f12224e;

    private ya(f2<bb> f2Var) {
        this.f12224e = e2.a((f2) f2Var);
    }

    public static boolean a() {
        return ((bb) f12223f.get()).a();
    }

    public static boolean b() {
        return ((bb) f12223f.get()).b();
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final /* synthetic */ bb get() {
        return this.f12224e.get();
    }

    public ya() {
        this(e2.a(new ab()));
    }
}
