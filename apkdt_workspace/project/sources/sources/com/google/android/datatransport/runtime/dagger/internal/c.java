package com.google.android.datatransport.runtime.dagger.internal;

/* compiled from: InstanceFactory.java */
/* loaded from: classes.dex */
public final class c<T> implements b<T>, com.google.android.datatransport.runtime.dagger.a<T> {

    /* renamed from: a, reason: collision with root package name */
    private final T f4389a;

    static {
        new c(null);
    }

    private c(T t) {
        this.f4389a = t;
    }

    public static <T> b<T> a(T t) {
        d.a(t, "instance cannot be null");
        return new c(t);
    }

    @Override // javax.inject.a
    public T get() {
        return this.f4389a;
    }
}
