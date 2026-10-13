package com.google.android.gms.internal.ads;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ft0<T> {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private final Deque<qz0<T>> f6720a = new LinkedBlockingDeque();

    /* renamed from: b, reason: collision with root package name */
    private final Callable<T> f6721b;

    /* renamed from: c, reason: collision with root package name */
    private final tz0 f6722c;

    public ft0(Callable<T> callable, tz0 tz0Var) {
        this.f6721b = callable;
        this.f6722c = tz0Var;
    }

    public final synchronized void a(int i2) {
        int size = i2 - this.f6720a.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.f6720a.add(this.f6722c.a(this.f6721b));
        }
    }

    public final synchronized qz0<T> a() {
        a(1);
        return this.f6720a.poll();
    }

    public final synchronized void a(qz0<T> qz0Var) {
        this.f6720a.addFirst(qz0Var);
    }
}
