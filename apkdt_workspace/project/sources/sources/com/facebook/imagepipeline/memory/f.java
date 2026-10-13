package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.VisibleForTesting;
import java.util.LinkedList;
import java.util.Queue;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

/* compiled from: Bucket.java */
@VisibleForTesting
@NotThreadSafe
/* loaded from: classes.dex */
class f<V> {

    /* renamed from: a, reason: collision with root package name */
    public final int f3840a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3841b;

    /* renamed from: c, reason: collision with root package name */
    final Queue f3842c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f3843d;

    /* renamed from: e, reason: collision with root package name */
    private int f3844e;

    public f(int i2, int i3, int i4, boolean z) {
        com.facebook.common.internal.h.b(i2 > 0);
        com.facebook.common.internal.h.b(i3 >= 0);
        com.facebook.common.internal.h.b(i4 >= 0);
        this.f3840a = i2;
        this.f3841b = i3;
        this.f3842c = new LinkedList();
        this.f3844e = i4;
        this.f3843d = z;
    }

    void a(V v) {
        this.f3842c.add(v);
    }

    @Nullable
    @Deprecated
    public V b() {
        V f2 = f();
        if (f2 != null) {
            this.f3844e++;
        }
        return f2;
    }

    int c() {
        return this.f3842c.size();
    }

    public void d() {
        this.f3844e++;
    }

    public boolean e() {
        return this.f3844e + c() > this.f3841b;
    }

    @Nullable
    public V f() {
        return (V) this.f3842c.poll();
    }

    public void a() {
        com.facebook.common.internal.h.b(this.f3844e > 0);
        this.f3844e--;
    }

    public void b(V v) {
        com.facebook.common.internal.h.a(v);
        if (this.f3843d) {
            com.facebook.common.internal.h.b(this.f3844e > 0);
            this.f3844e--;
            a(v);
        } else {
            int i2 = this.f3844e;
            if (i2 > 0) {
                this.f3844e = i2 - 1;
                a(v);
            } else {
                e.f.c.d.a.a("BUCKET", "Tried to release value %s from an empty bucket!", v);
            }
        }
    }
}
