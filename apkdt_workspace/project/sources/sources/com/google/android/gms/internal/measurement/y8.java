package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class y8 implements z8 {

    /* renamed from: a, reason: collision with root package name */
    private static final p1<Boolean> f12222a;

    static {
        w1 w1Var = new w1(q1.a("com.google.android.gms.measurement"));
        f12222a = w1Var.a("measurement.upload_dsid_enabled", false);
        w1Var.a("measurement.id.upload_dsid_enabled", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.z8
    public final boolean zzyy() {
        return f12222a.a().booleanValue();
    }
}
