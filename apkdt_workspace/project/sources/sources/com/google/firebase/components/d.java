package com.google.firebase.components;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Component.java */
/* loaded from: classes.dex */
public final class d<T> {

    /* renamed from: a, reason: collision with root package name */
    private final Set<Class<? super T>> f14300a;

    /* renamed from: b, reason: collision with root package name */
    private final Set<q> f14301b;

    /* renamed from: c, reason: collision with root package name */
    private final int f14302c;

    /* renamed from: d, reason: collision with root package name */
    private final int f14303d;

    /* renamed from: e, reason: collision with root package name */
    private final h<T> f14304e;

    /* renamed from: f, reason: collision with root package name */
    private final Set<Class<?>> f14305f;

    /* compiled from: Component.java */
    /* loaded from: classes.dex */
    public static class b<T> {

        /* renamed from: a, reason: collision with root package name */
        private final Set<Class<? super T>> f14306a;

        /* renamed from: b, reason: collision with root package name */
        private final Set<q> f14307b;

        /* renamed from: c, reason: collision with root package name */
        private int f14308c;

        /* renamed from: d, reason: collision with root package name */
        private int f14309d;

        /* renamed from: e, reason: collision with root package name */
        private h<T> f14310e;

        /* renamed from: f, reason: collision with root package name */
        private Set<Class<?>> f14311f;

        static /* synthetic */ b a(b bVar) {
            bVar.d();
            return bVar;
        }

        private b<T> d() {
            this.f14309d = 1;
            return this;
        }

        public d<T> b() {
            c0.b(this.f14310e != null, "Missing required property: factory.");
            return new d<>(new HashSet(this.f14306a), new HashSet(this.f14307b), this.f14308c, this.f14309d, this.f14310e, this.f14311f);
        }

        public b<T> c() {
            a(2);
            return this;
        }

        @SafeVarargs
        private b(Class<T> cls, Class<? super T>... clsArr) {
            this.f14306a = new HashSet();
            this.f14307b = new HashSet();
            this.f14308c = 0;
            this.f14309d = 0;
            this.f14311f = new HashSet();
            c0.a(cls, "Null interface");
            this.f14306a.add(cls);
            for (Class<? super T> cls2 : clsArr) {
                c0.a(cls2, "Null interface");
            }
            Collections.addAll(this.f14306a, clsArr);
        }

        public b<T> a(q qVar) {
            c0.a(qVar, "Null dependency");
            a(qVar.a());
            this.f14307b.add(qVar);
            return this;
        }

        public b<T> a() {
            a(1);
            return this;
        }

        private b<T> a(int i2) {
            c0.b(this.f14308c == 0, "Instantiation type has already been set.");
            this.f14308c = i2;
            return this;
        }

        private void a(Class<?> cls) {
            c0.a(!this.f14306a.contains(cls), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        public b<T> a(h<T> hVar) {
            c0.a(hVar, "Null factory");
            this.f14310e = hVar;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(Object obj, e eVar) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object b(Object obj, e eVar) {
        return obj;
    }

    public Set<q> a() {
        return this.f14301b;
    }

    public h<T> b() {
        return this.f14304e;
    }

    public Set<Class<? super T>> c() {
        return this.f14300a;
    }

    public Set<Class<?>> d() {
        return this.f14305f;
    }

    public boolean e() {
        return this.f14302c == 1;
    }

    public boolean f() {
        return this.f14302c == 2;
    }

    public boolean g() {
        return this.f14303d == 0;
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f14300a.toArray()) + ">{" + this.f14302c + ", type=" + this.f14303d + ", deps=" + Arrays.toString(this.f14301b.toArray()) + "}";
    }

    private d(Set<Class<? super T>> set, Set<q> set2, int i2, int i3, h<T> hVar, Set<Class<?>> set3) {
        this.f14300a = Collections.unmodifiableSet(set);
        this.f14301b = Collections.unmodifiableSet(set2);
        this.f14302c = i2;
        this.f14303d = i3;
        this.f14304e = hVar;
        this.f14305f = Collections.unmodifiableSet(set3);
    }

    public static <T> b<T> a(Class<T> cls) {
        return new b<>(cls, new Class[0]);
    }

    public static <T> b<T> b(Class<T> cls) {
        b<T> a2 = a(cls);
        b.a(a2);
        return a2;
    }

    @SafeVarargs
    public static <T> b<T> a(Class<T> cls, Class<? super T>... clsArr) {
        return new b<>(cls, clsArr);
    }

    @SafeVarargs
    public static <T> d<T> a(T t, Class<T> cls, Class<? super T>... clsArr) {
        b a2 = a(cls, clsArr);
        a2.a(com.google.firebase.components.b.a(t));
        return a2.b();
    }

    public static <T> d<T> a(T t, Class<T> cls) {
        b b2 = b(cls);
        b2.a(c.a(t));
        return b2.b();
    }
}
