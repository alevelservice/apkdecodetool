package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class kb implements f2<nb> {

    /* renamed from: f, reason: collision with root package name */
    private static kb f11948f = new kb();

    /* renamed from: e, reason: collision with root package name */
    private final f2<nb> f11949e;

    private kb(f2<nb> f2Var) {
        this.f11949e = e2.a((f2) f2Var);
    }

    public static boolean a() {
        return ((nb) f11948f.get()).a();
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final /* synthetic */ nb get() {
        return this.f11949e.get();
    }

    public kb() {
        this(e2.a(new mb()));
    }
}
