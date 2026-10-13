package com.google.firebase.components;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazySet.java */
/* loaded from: classes.dex */
public class x<T> implements com.google.firebase.p.b<Set<T>> {

    /* renamed from: b, reason: collision with root package name */
    private volatile Set<T> f14359b = null;

    /* renamed from: a, reason: collision with root package name */
    private volatile Set<com.google.firebase.p.b<T>> f14358a = Collections.newSetFromMap(new ConcurrentHashMap());

    x(Collection<com.google.firebase.p.b<T>> collection) {
        this.f14358a.addAll(collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static x<?> a(Collection<com.google.firebase.p.b<?>> collection) {
        return new x<>((Set) collection);
    }

    @Override // com.google.firebase.p.b
    public Set<T> get() {
        if (this.f14359b == null) {
            synchronized (this) {
                if (this.f14359b == null) {
                    this.f14359b = Collections.newSetFromMap(new ConcurrentHashMap());
                    a();
                }
            }
        }
        return Collections.unmodifiableSet(this.f14359b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(com.google.firebase.p.b<T> bVar) {
        if (this.f14359b == null) {
            this.f14358a.add(bVar);
        } else {
            this.f14359b.add(bVar.get());
        }
    }

    private synchronized void a() {
        Iterator<com.google.firebase.p.b<T>> it = this.f14358a.iterator();
        while (it.hasNext()) {
            this.f14359b.add(it.next().get());
        }
        this.f14358a = null;
    }
}
