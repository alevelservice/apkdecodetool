package com.google.firebase.components;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RestrictedComponentContainer.java */
/* loaded from: classes.dex */
public final class d0 extends com.google.firebase.components.a {

    /* renamed from: a, reason: collision with root package name */
    private final Set<Class<?>> f14312a;

    /* renamed from: b, reason: collision with root package name */
    private final Set<Class<?>> f14313b;

    /* renamed from: c, reason: collision with root package name */
    private final Set<Class<?>> f14314c;

    /* renamed from: d, reason: collision with root package name */
    private final Set<Class<?>> f14315d;

    /* renamed from: e, reason: collision with root package name */
    private final Set<Class<?>> f14316e;

    /* renamed from: f, reason: collision with root package name */
    private final e f14317f;

    /* compiled from: RestrictedComponentContainer.java */
    /* loaded from: classes.dex */
    private static class a implements com.google.firebase.n.c {

        /* renamed from: a, reason: collision with root package name */
        private final Set<Class<?>> f14318a;

        /* renamed from: b, reason: collision with root package name */
        private final com.google.firebase.n.c f14319b;

        public a(Set<Class<?>> set, com.google.firebase.n.c cVar) {
            this.f14318a = set;
            this.f14319b = cVar;
        }

        @Override // com.google.firebase.n.c
        public void a(com.google.firebase.n.a<?> aVar) {
            if (this.f14318a.contains(aVar.a())) {
                this.f14319b.a(aVar);
                return;
            }
            throw new s(String.format("Attempting to publish an undeclared event %s.", aVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(d<?> dVar, e eVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (q qVar : dVar.a()) {
            if (qVar.c()) {
                if (qVar.e()) {
                    hashSet4.add(qVar.a());
                } else {
                    hashSet.add(qVar.a());
                }
            } else if (qVar.b()) {
                hashSet3.add(qVar.a());
            } else if (qVar.e()) {
                hashSet5.add(qVar.a());
            } else {
                hashSet2.add(qVar.a());
            }
        }
        if (!dVar.d().isEmpty()) {
            hashSet.add(com.google.firebase.n.c.class);
        }
        this.f14312a = Collections.unmodifiableSet(hashSet);
        this.f14313b = Collections.unmodifiableSet(hashSet2);
        Collections.unmodifiableSet(hashSet3);
        this.f14314c = Collections.unmodifiableSet(hashSet4);
        this.f14315d = Collections.unmodifiableSet(hashSet5);
        this.f14316e = dVar.d();
        this.f14317f = eVar;
    }

    @Override // com.google.firebase.components.a, com.google.firebase.components.e
    public <T> T a(Class<T> cls) {
        if (this.f14312a.contains(cls)) {
            T t = (T) this.f14317f.a(cls);
            return !cls.equals(com.google.firebase.n.c.class) ? t : (T) new a(this.f14316e, (com.google.firebase.n.c) t);
        }
        throw new s(String.format("Attempting to request an undeclared dependency %s.", cls));
    }

    @Override // com.google.firebase.components.e
    public <T> com.google.firebase.p.b<T> b(Class<T> cls) {
        if (this.f14313b.contains(cls)) {
            return this.f14317f.b(cls);
        }
        throw new s(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
    }

    @Override // com.google.firebase.components.e
    public <T> com.google.firebase.p.b<Set<T>> c(Class<T> cls) {
        if (this.f14315d.contains(cls)) {
            return this.f14317f.c(cls);
        }
        throw new s(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", cls));
    }

    @Override // com.google.firebase.components.a, com.google.firebase.components.e
    public <T> Set<T> d(Class<T> cls) {
        if (this.f14314c.contains(cls)) {
            return this.f14317f.d(cls);
        }
        throw new s(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
    }
}
