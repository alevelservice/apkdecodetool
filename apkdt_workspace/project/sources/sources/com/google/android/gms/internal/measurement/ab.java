package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class ab implements bb {

    /* renamed from: a, reason: collision with root package name */
    private static final p1<Boolean> f11752a;

    /* renamed from: b, reason: collision with root package name */
    private static final p1<Boolean> f11753b;

    static {
        w1 w1Var = new w1(q1.a("com.google.android.gms.measurement"));
        f11752a = w1Var.a("measurement.audience.sequence_filters", false);
        f11753b = w1Var.a("measurement.audience.sequence_filters_bundle_timestamp", false);
        w1Var.a("measurement.id.audience.sequence_filters", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.bb
    public final boolean a() {
        return f11752a.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.bb
    public final boolean b() {
        return f11753b.a().booleanValue();
    }
}
