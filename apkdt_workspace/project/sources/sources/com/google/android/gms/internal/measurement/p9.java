package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class p9 implements m9 {

    /* renamed from: a, reason: collision with root package name */
    private static final p1<Boolean> f12048a;

    /* renamed from: b, reason: collision with root package name */
    private static final p1<Boolean> f12049b;

    static {
        w1 w1Var = new w1(q1.a("com.google.android.gms.measurement"));
        f12048a = w1Var.a("measurement.collection.efficient_engagement_reporting_enabled", false);
        f12049b = w1Var.a("measurement.collection.redundant_engagement_removal_enabled", false);
    }

    @Override // com.google.android.gms.internal.measurement.m9
    public final boolean zzzf() {
        return f12048a.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.m9
    public final boolean zzzg() {
        return f12049b.a().booleanValue();
    }
}
