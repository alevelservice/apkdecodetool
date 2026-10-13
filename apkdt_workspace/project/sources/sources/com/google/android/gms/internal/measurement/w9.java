package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class w9 implements x9 {

    /* renamed from: a, reason: collision with root package name */
    private static final p1<Boolean> f12181a;

    /* renamed from: b, reason: collision with root package name */
    private static final p1<Boolean> f12182b;

    /* renamed from: c, reason: collision with root package name */
    private static final p1<Boolean> f12183c;

    static {
        w1 w1Var = new w1(q1.a("com.google.android.gms.measurement"));
        f12181a = w1Var.a("measurement.sdk.collection.last_deep_link_referrer", false);
        f12182b = w1Var.a("measurement.sdk.collection.last_deep_link_referrer_campaign", false);
        f12183c = w1Var.a("measurement.sdk.collection.last_gclid_from_referrer", false);
    }

    @Override // com.google.android.gms.internal.measurement.x9
    public final boolean zzzj() {
        return f12181a.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.x9
    public final boolean zzzk() {
        return f12182b.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.x9
    public final boolean zzzl() {
        return f12183c.a().booleanValue();
    }
}
