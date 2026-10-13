package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class db implements f2<cb> {

    /* renamed from: f, reason: collision with root package name */
    private static db f11824f = new db();

    /* renamed from: e, reason: collision with root package name */
    private final f2<cb> f11825e;

    private db(f2<cb> f2Var) {
        this.f11825e = e2.a((f2) f2Var);
    }

    public static boolean a() {
        return ((cb) f11824f.get()).b();
    }

    public static boolean b() {
        return ((cb) f11824f.get()).c();
    }

    public static boolean c() {
        return ((cb) f11824f.get()).a();
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final /* synthetic */ cb get() {
        return this.f11825e.get();
    }

    public db() {
        this(e2.a(new fb()));
    }
}
