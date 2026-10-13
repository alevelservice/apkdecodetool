package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class xa implements f2<wa> {

    /* renamed from: f, reason: collision with root package name */
    private static xa f12207f = new xa();

    /* renamed from: e, reason: collision with root package name */
    private final f2<wa> f12208e;

    private xa(f2<wa> f2Var) {
        this.f12208e = e2.a((f2) f2Var);
    }

    public static boolean a() {
        return ((wa) f12207f.get()).b();
    }

    public static boolean b() {
        return ((wa) f12207f.get()).c();
    }

    public static boolean c() {
        return ((wa) f12207f.get()).h();
    }

    public static boolean d() {
        return ((wa) f12207f.get()).a();
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final /* synthetic */ wa get() {
        return this.f12208e.get();
    }

    public xa() {
        this(e2.a(new za()));
    }
}
