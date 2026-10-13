package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class ga implements f2<ja> {

    /* renamed from: f, reason: collision with root package name */
    private static ga f11877f = new ga();

    /* renamed from: e, reason: collision with root package name */
    private final f2<ja> f11878e;

    private ga(f2<ja> f2Var) {
        this.f11878e = e2.a((f2) f2Var);
    }

    public static boolean a() {
        return ((ja) f11877f.get()).e();
    }

    public static double b() {
        return ((ja) f11877f.get()).c();
    }

    public static long c() {
        return ((ja) f11877f.get()).d();
    }

    public static long d() {
        return ((ja) f11877f.get()).b();
    }

    public static String e() {
        return ((ja) f11877f.get()).a();
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final /* synthetic */ ja get() {
        return this.f11878e.get();
    }

    public ga() {
        this(e2.a(new ia()));
    }
}
