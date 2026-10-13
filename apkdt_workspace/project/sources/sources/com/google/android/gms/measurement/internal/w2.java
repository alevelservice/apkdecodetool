package com.google.android.gms.measurement.internal;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;

@VisibleForTesting
/* loaded from: classes.dex */
public final class w2<V> {

    /* renamed from: g, reason: collision with root package name */
    private static final Object f13293g = new Object();

    /* renamed from: a, reason: collision with root package name */
    private final String f13294a;

    /* renamed from: b, reason: collision with root package name */
    private final x2<V> f13295b;

    /* renamed from: c, reason: collision with root package name */
    private final V f13296c;

    /* renamed from: d, reason: collision with root package name */
    private final Object f13297d;

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("overrideLock")
    private volatile V f13298e;

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("cachingLock")
    private volatile V f13299f;

    private w2(@NonNull String str, @NonNull V v, @NonNull V v2, @Nullable x2<V> x2Var) {
        this.f13297d = new Object();
        this.f13298e = null;
        this.f13299f = null;
        this.f13294a = str;
        this.f13296c = v;
        this.f13295b = x2Var;
    }

    public final String a() {
        return this.f13294a;
    }

    public final V a(@Nullable V v) {
        synchronized (this.f13297d) {
        }
        if (v != null) {
            return v;
        }
        if (j.f12992a == null) {
            return this.f13296c;
        }
        synchronized (f13293g) {
            if (y8.a()) {
                return this.f13299f == null ? this.f13296c : this.f13299f;
            }
            if (!y8.a()) {
                y8 y8Var = j.f12992a;
                try {
                    for (w2 w2Var : j.I0()) {
                        synchronized (f13293g) {
                            if (!y8.a()) {
                                w2Var.f13299f = w2Var.f13295b != null ? w2Var.f13295b.get() : null;
                            } else {
                                throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                            }
                        }
                    }
                } catch (SecurityException e2) {
                    j.a(e2);
                }
                x2<V> x2Var = this.f13295b;
                if (x2Var == null) {
                    y8 y8Var2 = j.f12992a;
                    return this.f13296c;
                }
                try {
                    return x2Var.get();
                } catch (SecurityException e3) {
                    j.a(e3);
                    y8 y8Var3 = j.f12992a;
                    return this.f13296c;
                }
            }
            throw new IllegalStateException("Tried to refresh flag cache on main thread or on package side.");
        }
    }
}
