package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class b<O extends a.d> {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f5030a = false;

    /* renamed from: b, reason: collision with root package name */
    private final int f5031b;

    /* renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.common.api.a<O> f5032c;

    /* renamed from: d, reason: collision with root package name */
    private final O f5033d;

    private b(com.google.android.gms.common.api.a<O> aVar, O o) {
        this.f5032c = aVar;
        this.f5033d = o;
        this.f5031b = com.google.android.gms.common.internal.k.a(this.f5032c, this.f5033d);
    }

    public static <O extends a.d> b<O> a(com.google.android.gms.common.api.a<O> aVar, O o) {
        return new b<>(aVar, o);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return !this.f5030a && !bVar.f5030a && com.google.android.gms.common.internal.k.a(this.f5032c, bVar.f5032c) && com.google.android.gms.common.internal.k.a(this.f5033d, bVar.f5033d);
    }

    public final int hashCode() {
        return this.f5031b;
    }

    public final String a() {
        return this.f5032c.b();
    }
}
