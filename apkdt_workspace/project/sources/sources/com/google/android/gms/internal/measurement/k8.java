package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class k8 implements f2<n8> {

    /* renamed from: f, reason: collision with root package name */
    private static k8 f11945f = new k8();

    /* renamed from: e, reason: collision with root package name */
    private final f2<n8> f11946e;

    private k8(f2<n8> f2Var) {
        this.f11946e = e2.a((f2) f2Var);
    }

    public static boolean a() {
        return ((n8) f11945f.get()).zzxj();
    }

    public static boolean b() {
        return ((n8) f11945f.get()).zzxk();
    }

    public static boolean c() {
        return ((n8) f11945f.get()).zzxl();
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final /* synthetic */ n8 get() {
        return this.f11946e.get();
    }

    public k8() {
        this(e2.a(new m8()));
    }
}
