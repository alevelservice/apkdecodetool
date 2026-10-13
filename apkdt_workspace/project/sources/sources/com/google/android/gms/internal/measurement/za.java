package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class za implements wa {

    /* renamed from: a, reason: collision with root package name */
    private static final p1<Boolean> f12240a;

    /* renamed from: b, reason: collision with root package name */
    private static final p1<Boolean> f12241b;

    /* renamed from: c, reason: collision with root package name */
    private static final p1<Boolean> f12242c;

    /* renamed from: d, reason: collision with root package name */
    private static final p1<Boolean> f12243d;

    static {
        w1 w1Var = new w1(q1.a("com.google.android.gms.measurement"));
        f12240a = w1Var.a("measurement.service.audience.scoped_filters_v27", false);
        f12241b = w1Var.a("measurement.service.audience.session_scoped_user_engagement", false);
        f12242c = w1Var.a("measurement.service.audience.session_scoped_event_aggregates", false);
        f12243d = w1Var.a("measurement.service.audience.remove_disabled_session_scoped_user_engagement", false);
    }

    @Override // com.google.android.gms.internal.measurement.wa
    public final boolean a() {
        return f12240a.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.wa
    public final boolean b() {
        return f12241b.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.wa
    public final boolean c() {
        return f12242c.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.wa
    public final boolean h() {
        return f12243d.a().booleanValue();
    }
}
