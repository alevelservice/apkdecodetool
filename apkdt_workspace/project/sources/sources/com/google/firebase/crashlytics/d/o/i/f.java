package com.google.firebase.crashlytics.d.o.i;

/* compiled from: SettingsData.java */
/* loaded from: classes.dex */
public class f implements e {

    /* renamed from: a, reason: collision with root package name */
    public final b f14719a;

    /* renamed from: b, reason: collision with root package name */
    public final d f14720b;

    /* renamed from: c, reason: collision with root package name */
    public final c f14721c;

    /* renamed from: d, reason: collision with root package name */
    public final long f14722d;

    public f(long j2, b bVar, d dVar, c cVar, int i2, int i3) {
        this.f14722d = j2;
        this.f14719a = bVar;
        this.f14720b = dVar;
        this.f14721c = cVar;
    }

    public boolean a(long j2) {
        return this.f14722d < j2;
    }

    @Override // com.google.firebase.crashlytics.d.o.i.e
    public d b() {
        return this.f14720b;
    }

    public b c() {
        return this.f14719a;
    }

    public long d() {
        return this.f14722d;
    }

    @Override // com.google.firebase.crashlytics.d.o.i.e
    public c a() {
        return this.f14721c;
    }
}
