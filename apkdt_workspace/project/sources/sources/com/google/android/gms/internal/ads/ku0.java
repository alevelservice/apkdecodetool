package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class ku0<E> {

    /* renamed from: d, reason: collision with root package name */
    private static final qz0<?> f7754d = gz0.a((Object) null);

    /* renamed from: a, reason: collision with root package name */
    private final tz0 f7755a;

    /* renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f7756b;

    /* renamed from: c, reason: collision with root package name */
    private final xu0<E> f7757c;

    public ku0(tz0 tz0Var, ScheduledExecutorService scheduledExecutorService, xu0<E> xu0Var) {
        this.f7755a = tz0Var;
        this.f7756b = scheduledExecutorService;
        this.f7757c = xu0Var;
    }

    public final pu0 a(E e2) {
        return new pu0(this, e2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract String b(E e2);

    public final <I> ru0<I> a(E e2, qz0<I> qz0Var) {
        return new ru0<>(this, e2, qz0Var, Collections.singletonList(qz0Var), qz0Var);
    }

    public final mu0 a(E e2, qz0<?>... qz0VarArr) {
        return new mu0(this, e2, Arrays.asList(qz0VarArr));
    }
}
