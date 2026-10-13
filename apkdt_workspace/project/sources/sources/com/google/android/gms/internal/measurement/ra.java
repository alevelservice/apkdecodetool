package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class ra implements f2<qa> {

    /* renamed from: f, reason: collision with root package name */
    private static ra f12076f = new ra();

    /* renamed from: e, reason: collision with root package name */
    private final f2<qa> f12077e;

    private ra(f2<qa> f2Var) {
        this.f12077e = e2.a((f2) f2Var);
    }

    public static boolean a() {
        return ((qa) f12076f.get()).f();
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final /* synthetic */ qa get() {
        return this.f12077e.get();
    }

    public ra() {
        this(e2.a(new ta()));
    }
}
