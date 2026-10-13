package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class r8 implements o8 {

    /* renamed from: a, reason: collision with root package name */
    private static final p1<Boolean> f12075a;

    static {
        w1 w1Var = new w1(q1.a("com.google.android.gms.measurement"));
        f12075a = w1Var.a("measurement.app_launch.event_ordering_fix", false);
        w1Var.a("measurement.id.app_launch.event_ordering_fix", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.o8
    public final boolean zzxm() {
        return f12075a.a().booleanValue();
    }
}
