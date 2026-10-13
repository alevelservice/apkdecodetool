package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class fb implements cb {

    /* renamed from: a, reason: collision with root package name */
    private static final p1<Boolean> f11858a;

    /* renamed from: b, reason: collision with root package name */
    private static final p1<Boolean> f11859b;

    /* renamed from: c, reason: collision with root package name */
    private static final p1<Boolean> f11860c;

    static {
        w1 w1Var = new w1(q1.a("com.google.android.gms.measurement"));
        f11858a = w1Var.a("measurement.service.sessions.remove_disabled_session_number", false);
        f11859b = w1Var.a("measurement.service.sessions.session_number_enabled", false);
        f11860c = w1Var.a("measurement.service.sessions.session_number_backfill_enabled", false);
        w1Var.a("measurement.id.session_number", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.cb
    public final boolean a() {
        return f11860c.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.cb
    public final boolean b() {
        return f11858a.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.cb
    public final boolean c() {
        return f11859b.a().booleanValue();
    }
}
