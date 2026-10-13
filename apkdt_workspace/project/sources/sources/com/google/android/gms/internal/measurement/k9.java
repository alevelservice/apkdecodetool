package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class k9 implements l9 {

    /* renamed from: a, reason: collision with root package name */
    private static final p1<Boolean> f11947a;

    static {
        w1 w1Var = new w1(q1.a("com.google.android.gms.measurement"));
        f11947a = w1Var.a("measurement.fetch_config_with_admob_app_id", true);
        w1Var.a("measurement.id.fetch_config_with_admob_app_id", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.l9
    public final boolean zzze() {
        return f11947a.a().booleanValue();
    }
}
