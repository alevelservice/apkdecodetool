package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.k;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ec {

    /* renamed from: a, reason: collision with root package name */
    public final String f6391a;

    /* renamed from: b, reason: collision with root package name */
    private final double f6392b;

    /* renamed from: c, reason: collision with root package name */
    private final double f6393c;

    /* renamed from: d, reason: collision with root package name */
    public final double f6394d;

    /* renamed from: e, reason: collision with root package name */
    public final int f6395e;

    public ec(String str, double d2, double d3, double d4, int i2) {
        this.f6391a = str;
        this.f6393c = d2;
        this.f6392b = d3;
        this.f6394d = d4;
        this.f6395e = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ec)) {
            return false;
        }
        ec ecVar = (ec) obj;
        return com.google.android.gms.common.internal.k.a(this.f6391a, ecVar.f6391a) && this.f6392b == ecVar.f6392b && this.f6393c == ecVar.f6393c && this.f6395e == ecVar.f6395e && Double.compare(this.f6394d, ecVar.f6394d) == 0;
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.k.a(this.f6391a, Double.valueOf(this.f6392b), Double.valueOf(this.f6393c), Double.valueOf(this.f6394d), Integer.valueOf(this.f6395e));
    }

    public final String toString() {
        k.a a2 = com.google.android.gms.common.internal.k.a(this);
        a2.a("name", this.f6391a);
        a2.a("minBound", Double.valueOf(this.f6393c));
        a2.a("maxBound", Double.valueOf(this.f6392b));
        a2.a("percent", Double.valueOf(this.f6394d));
        a2.a("count", Integer.valueOf(this.f6395e));
        return a2.toString();
    }
}
