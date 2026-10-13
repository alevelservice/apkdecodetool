package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class eb implements f2<hb> {

    /* renamed from: f, reason: collision with root package name */
    private static eb f11843f = new eb();

    /* renamed from: e, reason: collision with root package name */
    private final f2<hb> f11844e;

    private eb(f2<hb> f2Var) {
        this.f11844e = e2.a((f2) f2Var);
    }

    public static boolean a() {
        return ((hb) f11843f.get()).a();
    }

    public static boolean b() {
        return ((hb) f11843f.get()).b();
    }

    public static boolean c() {
        return ((hb) f11843f.get()).c();
    }

    public static boolean d() {
        return ((hb) f11843f.get()).d();
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final /* synthetic */ hb get() {
        return this.f11844e.get();
    }

    public eb() {
        this(e2.a(new gb()));
    }
}
