package com.facebook.imagepipeline.memory;

import androidx.annotation.Nullable;
import java.util.HashSet;
import java.util.Set;

/* compiled from: LruBucketsPoolBackend.java */
/* loaded from: classes.dex */
public abstract class s<T> implements c0<T> {

    /* renamed from: a, reason: collision with root package name */
    private final Set<T> f3871a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    private final g<T> f3872b = new g<>();

    private T c(@Nullable T t) {
        if (t != null) {
            synchronized (this) {
                this.f3871a.remove(t);
            }
        }
        return t;
    }

    @Override // com.facebook.imagepipeline.memory.c0
    @Nullable
    public T a() {
        T a2 = this.f3872b.a();
        c(a2);
        return a2;
    }

    @Override // com.facebook.imagepipeline.memory.c0
    public void b(T t) {
        boolean add;
        synchronized (this) {
            add = this.f3871a.add(t);
        }
        if (add) {
            this.f3872b.a(a(t), t);
        }
    }

    @Override // com.facebook.imagepipeline.memory.c0
    @Nullable
    public T get(int i2) {
        T a2 = this.f3872b.a(i2);
        c(a2);
        return a2;
    }
}
