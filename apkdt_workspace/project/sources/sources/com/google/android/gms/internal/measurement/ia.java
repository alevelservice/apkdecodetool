package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class ia implements ja {

    /* renamed from: a, reason: collision with root package name */
    private static final p1<Boolean> f11922a;

    /* renamed from: b, reason: collision with root package name */
    private static final p1<Double> f11923b;

    /* renamed from: c, reason: collision with root package name */
    private static final p1<Long> f11924c;

    /* renamed from: d, reason: collision with root package name */
    private static final p1<Long> f11925d;

    /* renamed from: e, reason: collision with root package name */
    private static final p1<String> f11926e;

    static {
        w1 w1Var = new w1(q1.a("com.google.android.gms.measurement"));
        f11922a = w1Var.a("measurement.test.boolean_flag", false);
        f11923b = w1Var.a("measurement.test.double_flag", -3.0d);
        f11924c = w1Var.a("measurement.test.int_flag", -2L);
        f11925d = w1Var.a("measurement.test.long_flag", -1L);
        f11926e = w1Var.a("measurement.test.string_flag", "---");
    }

    @Override // com.google.android.gms.internal.measurement.ja
    public final String a() {
        return f11926e.a();
    }

    @Override // com.google.android.gms.internal.measurement.ja
    public final long b() {
        return f11925d.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ja
    public final double c() {
        return f11923b.a().doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.ja
    public final long d() {
        return f11924c.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ja
    public final boolean e() {
        return f11922a.a().booleanValue();
    }
}
