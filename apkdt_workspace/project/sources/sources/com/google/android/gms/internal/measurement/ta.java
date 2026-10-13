package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class ta implements qa {

    /* renamed from: a, reason: collision with root package name */
    private static final p1<Boolean> f12118a;

    static {
        w1 w1Var = new w1(q1.a("com.google.android.gms.measurement"));
        f12118a = w1Var.a("measurement.reset_analytics.persist_time", false);
        w1Var.a("measurement.id.reset_analytics.persist_time", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.qa
    public final boolean f() {
        return f12118a.a().booleanValue();
    }
}
