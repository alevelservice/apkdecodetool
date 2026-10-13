package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class u9 implements f2<x9> {

    /* renamed from: f, reason: collision with root package name */
    private static u9 f12135f = new u9();

    /* renamed from: e, reason: collision with root package name */
    private final f2<x9> f12136e;

    private u9(f2<x9> f2Var) {
        this.f12136e = e2.a((f2) f2Var);
    }

    public static boolean a() {
        return ((x9) f12135f.get()).zzzj();
    }

    public static boolean b() {
        return ((x9) f12135f.get()).zzzk();
    }

    public static boolean c() {
        return ((x9) f12135f.get()).zzzl();
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final /* synthetic */ x9 get() {
        return this.f12136e.get();
    }

    public u9() {
        this(e2.a(new w9()));
    }
}
