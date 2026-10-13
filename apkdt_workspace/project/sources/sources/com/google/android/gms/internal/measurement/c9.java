package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class c9 implements f2<f9> {

    /* renamed from: f, reason: collision with root package name */
    private static c9 f11804f = new c9();

    /* renamed from: e, reason: collision with root package name */
    private final f2<f9> f11805e;

    private c9(f2<f9> f2Var) {
        this.f11805e = e2.a((f2) f2Var);
    }

    public static boolean a() {
        return ((f9) f11804f.get()).zzza();
    }

    public static boolean b() {
        return ((f9) f11804f.get()).zzzb();
    }

    public static boolean c() {
        return ((f9) f11804f.get()).zzzc();
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final /* synthetic */ f9 get() {
        return this.f11805e.get();
    }

    public c9() {
        this(e2.a(new e9()));
    }
}
