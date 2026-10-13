package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class e9 implements f9 {

    /* renamed from: a, reason: collision with root package name */
    private static final p1<Boolean> f11840a;

    /* renamed from: b, reason: collision with root package name */
    private static final p1<Boolean> f11841b;

    /* renamed from: c, reason: collision with root package name */
    private static final p1<Boolean> f11842c;

    static {
        w1 w1Var = new w1(q1.a("com.google.android.gms.measurement"));
        f11840a = w1Var.a("measurement.sdk.dynamite.allow_remote_dynamite", false);
        f11841b = w1Var.a("measurement.collection.init_params_control_enabled", true);
        f11842c = w1Var.a("measurement.sdk.dynamite.use_dynamite", false);
        w1Var.a("measurement.sdk.dynamite.use_dynamite2", false);
        w1Var.a("measurement.id.sdk.dynamite.use_dynamite", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.f9
    public final boolean zzza() {
        return f11840a.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.f9
    public final boolean zzzb() {
        return f11841b.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.f9
    public final boolean zzzc() {
        return f11842c.a().booleanValue();
    }
}
