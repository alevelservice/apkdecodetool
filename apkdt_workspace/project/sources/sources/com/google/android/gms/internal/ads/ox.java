package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ox<T> {

    /* renamed from: a, reason: collision with root package name */
    public T f8600a;

    /* renamed from: b, reason: collision with root package name */
    public Executor f8601b;

    public ox(T t, Executor executor) {
        this.f8600a = t;
        this.f8601b = executor;
    }

    public static <T> ox<T> a(T t, Executor executor) {
        return new ox<>(t, executor);
    }
}
