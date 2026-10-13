package com.facebook.common.internal;

/* compiled from: Suppliers.java */
/* loaded from: classes.dex */
public class k {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Suppliers.java */
    /* loaded from: classes.dex */
    static class a<T> implements j<T> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f3538a;

        a(Object obj) {
            this.f3538a = obj;
        }

        @Override // com.facebook.common.internal.j
        public T get() {
            return (T) this.f3538a;
        }
    }

    /* compiled from: Suppliers.java */
    /* loaded from: classes.dex */
    static class b implements j<Boolean> {
        b() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.facebook.common.internal.j
        public Boolean get() {
            return true;
        }
    }

    /* compiled from: Suppliers.java */
    /* loaded from: classes.dex */
    static class c implements j<Boolean> {
        c() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.facebook.common.internal.j
        public Boolean get() {
            return false;
        }
    }

    static {
        new b();
        new c();
    }

    public static <T> j<T> a(T t) {
        return new a(t);
    }
}
