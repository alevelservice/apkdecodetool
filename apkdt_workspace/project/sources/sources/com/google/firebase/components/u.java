package com.google.firebase.components;

import androidx.annotation.GuardedBy;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* compiled from: EventBus.java */
/* loaded from: classes.dex */
class u implements com.google.firebase.n.d, com.google.firebase.n.c {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private final Map<Class<?>, ConcurrentHashMap<com.google.firebase.n.b<Object>, Executor>> f14352a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private Queue<com.google.firebase.n.a<?>> f14353b = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    private final Executor f14354c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(Executor executor) {
        this.f14354c = executor;
    }

    private synchronized Set<Map.Entry<com.google.firebase.n.b<Object>, Executor>> b(com.google.firebase.n.a<?> aVar) {
        ConcurrentHashMap<com.google.firebase.n.b<Object>, Executor> concurrentHashMap;
        concurrentHashMap = this.f14352a.get(aVar.a());
        return concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
    }

    @Override // com.google.firebase.n.c
    public void a(com.google.firebase.n.a<?> aVar) {
        c0.a(aVar);
        synchronized (this) {
            if (this.f14353b != null) {
                this.f14353b.add(aVar);
                return;
            }
            for (Map.Entry<com.google.firebase.n.b<Object>, Executor> entry : b(aVar)) {
                entry.getValue().execute(t.a(entry, aVar));
            }
        }
    }

    @Override // com.google.firebase.n.d
    public synchronized <T> void b(Class<T> cls, com.google.firebase.n.b<? super T> bVar) {
        c0.a(cls);
        c0.a(bVar);
        if (this.f14352a.containsKey(cls)) {
            ConcurrentHashMap<com.google.firebase.n.b<Object>, Executor> concurrentHashMap = this.f14352a.get(cls);
            concurrentHashMap.remove(bVar);
            if (concurrentHashMap.isEmpty()) {
                this.f14352a.remove(cls);
            }
        }
    }

    public synchronized <T> void a(Class<T> cls, Executor executor, com.google.firebase.n.b<? super T> bVar) {
        c0.a(cls);
        c0.a(bVar);
        c0.a(executor);
        if (!this.f14352a.containsKey(cls)) {
            this.f14352a.put(cls, new ConcurrentHashMap<>());
        }
        this.f14352a.get(cls).put(bVar, executor);
    }

    @Override // com.google.firebase.n.d
    public <T> void a(Class<T> cls, com.google.firebase.n.b<? super T> bVar) {
        a(cls, this.f14354c, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        Queue<com.google.firebase.n.a<?>> queue;
        synchronized (this) {
            if (this.f14353b != null) {
                queue = this.f14353b;
                this.f14353b = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            Iterator<com.google.firebase.n.a<?>> it = queue.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
        }
    }
}
