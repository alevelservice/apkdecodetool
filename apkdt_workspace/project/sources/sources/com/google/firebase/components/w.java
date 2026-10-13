package com.google.firebase.components;

/* compiled from: Lazy.java */
/* loaded from: classes.dex */
public class w<T> implements com.google.firebase.p.b<T> {

    /* renamed from: c, reason: collision with root package name */
    private static final Object f14355c = new Object();

    /* renamed from: a, reason: collision with root package name */
    private volatile Object f14356a = f14355c;

    /* renamed from: b, reason: collision with root package name */
    private volatile com.google.firebase.p.b<T> f14357b;

    public w(com.google.firebase.p.b<T> bVar) {
        this.f14357b = bVar;
    }

    @Override // com.google.firebase.p.b
    public T get() {
        T t = (T) this.f14356a;
        if (t == f14355c) {
            synchronized (this) {
                t = (T) this.f14356a;
                if (t == f14355c) {
                    t = this.f14357b.get();
                    this.f14356a = t;
                    this.f14357b = null;
                }
            }
        }
        return t;
    }
}
