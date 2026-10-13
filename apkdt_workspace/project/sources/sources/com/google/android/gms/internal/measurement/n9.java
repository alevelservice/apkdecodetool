package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class n9 implements f2<m9> {

    /* renamed from: f, reason: collision with root package name */
    private static n9 f12000f = new n9();

    /* renamed from: e, reason: collision with root package name */
    private final f2<m9> f12001e;

    private n9(f2<m9> f2Var) {
        this.f12001e = e2.a((f2) f2Var);
    }

    public static boolean a() {
        return ((m9) f12000f.get()).zzzf();
    }

    public static boolean b() {
        return ((m9) f12000f.get()).zzzg();
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final /* synthetic */ m9 get() {
        return this.f12001e.get();
    }

    public n9() {
        this(e2.a(new p9()));
    }
}
