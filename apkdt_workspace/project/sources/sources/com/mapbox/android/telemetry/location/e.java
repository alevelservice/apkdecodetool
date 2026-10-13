package com.mapbox.android.telemetry.location;

import com.mapbox.android.telemetry.l0;

/* compiled from: SessionIdentifier.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private final long f15633a;

    /* renamed from: b, reason: collision with root package name */
    private String f15634b;

    /* renamed from: c, reason: collision with root package name */
    private long f15635c;

    public e() {
        this(86400000L);
    }

    public long a() {
        return this.f15633a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        if (System.currentTimeMillis() - this.f15635c >= this.f15633a || this.f15634b == null) {
            this.f15634b = l0.b();
            this.f15635c = System.currentTimeMillis();
        }
        return this.f15634b;
    }

    public e(long j2) {
        this.f15634b = null;
        this.f15633a = j2;
    }
}
