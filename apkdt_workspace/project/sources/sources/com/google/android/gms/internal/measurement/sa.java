package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class sa implements f2<va> {

    /* renamed from: f, reason: collision with root package name */
    private static sa f12102f = new sa();

    /* renamed from: e, reason: collision with root package name */
    private final f2<va> f12103e;

    private sa(f2<va> f2Var) {
        this.f12103e = e2.a((f2) f2Var);
    }

    public static boolean a() {
        return ((va) f12102f.get()).d();
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final /* synthetic */ va get() {
        return this.f12103e.get();
    }

    public sa() {
        this(e2.a(new ua()));
    }
}
