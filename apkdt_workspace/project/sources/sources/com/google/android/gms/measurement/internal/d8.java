package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d8 {

    /* renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.common.util.e f12842a;

    /* renamed from: b, reason: collision with root package name */
    private long f12843b;

    public d8(com.google.android.gms.common.util.e eVar) {
        com.google.android.gms.common.internal.m.a(eVar);
        this.f12842a = eVar;
    }

    public final void a() {
        this.f12843b = 0L;
    }

    public final void b() {
        this.f12843b = this.f12842a.c();
    }

    public final boolean a(long j2) {
        return this.f12843b == 0 || this.f12842a.c() - this.f12843b >= 3600000;
    }
}
