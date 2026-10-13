package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class m8 implements n8 {

    /* renamed from: a, reason: collision with root package name */
    private static final p1<Boolean> f11975a;

    /* renamed from: b, reason: collision with root package name */
    private static final p1<Boolean> f11976b;

    /* renamed from: c, reason: collision with root package name */
    private static final p1<Boolean> f11977c;

    static {
        w1 w1Var = new w1(q1.a("com.google.android.gms.measurement"));
        f11975a = w1Var.a("measurement.log_installs_enabled", false);
        f11976b = w1Var.a("measurement.log_third_party_store_events_enabled", false);
        f11977c = w1Var.a("measurement.log_upgrades_enabled", false);
    }

    @Override // com.google.android.gms.internal.measurement.n8
    public final boolean zzxj() {
        return f11975a.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.n8
    public final boolean zzxk() {
        return f11976b.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.n8
    public final boolean zzxl() {
        return f11977c.a().booleanValue();
    }
}
