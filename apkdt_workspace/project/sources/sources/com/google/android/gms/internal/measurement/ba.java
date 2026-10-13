package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class ba implements y9 {

    /* renamed from: a, reason: collision with root package name */
    private static final p1<Boolean> f11781a;

    /* renamed from: b, reason: collision with root package name */
    private static final p1<Boolean> f11782b;

    static {
        w1 w1Var = new w1(q1.a("com.google.android.gms.measurement"));
        f11781a = w1Var.a("measurement.personalized_ads_signals_collection_enabled", true);
        f11782b = w1Var.a("measurement.personalized_ads_property_translation_enabled", true);
    }

    @Override // com.google.android.gms.internal.measurement.y9
    public final boolean zzzm() {
        return f11781a.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.y9
    public final boolean zzzn() {
        return f11782b.a().booleanValue();
    }
}
