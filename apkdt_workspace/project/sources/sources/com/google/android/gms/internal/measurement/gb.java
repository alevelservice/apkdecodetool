package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class gb implements hb {

    /* renamed from: a, reason: collision with root package name */
    private static final p1<Boolean> f11879a;

    /* renamed from: b, reason: collision with root package name */
    private static final p1<Boolean> f11880b;

    /* renamed from: c, reason: collision with root package name */
    private static final p1<Boolean> f11881c;

    /* renamed from: d, reason: collision with root package name */
    private static final p1<Boolean> f11882d;

    static {
        w1 w1Var = new w1(q1.a("com.google.android.gms.measurement"));
        f11879a = w1Var.a("measurement.client.sessions.background_sessions_enabled", true);
        f11880b = w1Var.a("measurement.client.sessions.immediate_start_enabled_foreground", false);
        w1Var.a("measurement.client.sessions.immediate_start_enabled", false);
        f11881c = w1Var.a("measurement.client.sessions.remove_expired_session_properties_enabled", true);
        f11882d = w1Var.a("measurement.client.sessions.session_id_enabled", true);
        w1Var.a("measurement.id.sessionization_client", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.hb
    public final boolean a() {
        return f11879a.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.hb
    public final boolean b() {
        return f11880b.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.hb
    public final boolean c() {
        return f11881c.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.hb
    public final boolean d() {
        return f11882d.a().booleanValue();
    }
}
