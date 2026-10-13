package com.google.android.datatransport.runtime.dagger.internal;

/* compiled from: DoubleCheck.java */
/* loaded from: classes.dex */
public final class a<T> implements javax.inject.a<T>, com.google.android.datatransport.runtime.dagger.a<T> {

    /* renamed from: c, reason: collision with root package name */
    private static final Object f4386c = new Object();

    /* renamed from: a, reason: collision with root package name */
    private volatile javax.inject.a<T> f4387a;

    /* renamed from: b, reason: collision with root package name */
    private volatile Object f4388b = f4386c;

    private a(javax.inject.a<T> aVar) {
        this.f4387a = aVar;
    }

    public static Object a(Object obj, Object obj2) {
        if (!(obj != f4386c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // javax.inject.a
    public T get() {
        T t = (T) this.f4388b;
        if (t == f4386c) {
            synchronized (this) {
                t = (T) this.f4388b;
                if (t == f4386c) {
                    t = this.f4387a.get();
                    a(this.f4388b, t);
                    this.f4388b = t;
                    this.f4387a = null;
                }
            }
        }
        return t;
    }

    public static <P extends javax.inject.a<T>, T> javax.inject.a<T> a(P p) {
        d.a(p);
        return p instanceof a ? p : new a(p);
    }
}
