package com.google.android.gms.common.api.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class g1 {

    /* renamed from: a, reason: collision with root package name */
    private final a.e.a<b<?>, ConnectionResult> f5072a;

    /* renamed from: b, reason: collision with root package name */
    private final a.e.a<b<?>, String> f5073b;

    /* renamed from: c, reason: collision with root package name */
    private final e.i.b.b.d.i<Map<b<?>, String>> f5074c;

    /* renamed from: d, reason: collision with root package name */
    private int f5075d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f5076e;

    public final Set<b<?>> a() {
        return this.f5072a.keySet();
    }

    public final void a(b<?> bVar, ConnectionResult connectionResult, @Nullable String str) {
        this.f5072a.put(bVar, connectionResult);
        this.f5073b.put(bVar, str);
        this.f5075d--;
        if (!connectionResult.o()) {
            this.f5076e = true;
        }
        if (this.f5075d == 0) {
            if (this.f5076e) {
                this.f5074c.a(new com.google.android.gms.common.api.c(this.f5072a));
            } else {
                this.f5074c.a((e.i.b.b.d.i<Map<b<?>, String>>) this.f5073b);
            }
        }
    }
}
