package com.google.firebase.components;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ComponentRuntime.java */
/* loaded from: classes.dex */
public class n extends com.google.firebase.components.a implements com.google.firebase.l.a {

    /* renamed from: g, reason: collision with root package name */
    private static final com.google.firebase.p.b<Set<Object>> f14331g = m.a();

    /* renamed from: a, reason: collision with root package name */
    private final Map<d<?>, com.google.firebase.p.b<?>> f14332a;

    /* renamed from: b, reason: collision with root package name */
    private final Map<Class<?>, com.google.firebase.p.b<?>> f14333b;

    /* renamed from: c, reason: collision with root package name */
    private final Map<Class<?>, x<?>> f14334c;

    /* renamed from: d, reason: collision with root package name */
    private final List<com.google.firebase.p.b<i>> f14335d;

    /* renamed from: e, reason: collision with root package name */
    private final u f14336e;

    /* renamed from: f, reason: collision with root package name */
    private final AtomicReference<Boolean> f14337f;

    /* compiled from: ComponentRuntime.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private final Executor f14338a;

        /* renamed from: b, reason: collision with root package name */
        private final List<com.google.firebase.p.b<i>> f14339b = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        private final List<d<?>> f14340c = new ArrayList();

        b(Executor executor) {
            this.f14338a = executor;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ i b(i iVar) {
            return iVar;
        }

        public b a(Collection<com.google.firebase.p.b<i>> collection) {
            this.f14339b.addAll(collection);
            return this;
        }

        public b a(i iVar) {
            this.f14339b.add(o.a(iVar));
            return this;
        }

        public b a(d<?> dVar) {
            this.f14340c.add(dVar);
            return this;
        }

        public n a() {
            return new n(this.f14338a, this.f14339b, this.f14340c);
        }
    }

    private List<Runnable> b(List<d<?>> list) {
        ArrayList arrayList = new ArrayList();
        for (d<?> dVar : list) {
            if (dVar.g()) {
                com.google.firebase.p.b<?> bVar = this.f14332a.get(dVar);
                for (Class<? super Object> cls : dVar.c()) {
                    if (!this.f14333b.containsKey(cls)) {
                        this.f14333b.put(cls, bVar);
                    } else {
                        arrayList.add(k.a((b0) this.f14333b.get(cls), bVar));
                    }
                }
            }
        }
        return arrayList;
    }

    private List<Runnable> c() {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (Map.Entry<d<?>, com.google.firebase.p.b<?>> entry : this.f14332a.entrySet()) {
            d<?> key = entry.getKey();
            if (!key.g()) {
                com.google.firebase.p.b<?> value = entry.getValue();
                for (Class<? super Object> cls : key.c()) {
                    if (!hashMap.containsKey(cls)) {
                        hashMap.put(cls, new HashSet());
                    }
                    ((Set) hashMap.get(cls)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            if (!this.f14334c.containsKey(entry2.getKey())) {
                this.f14334c.put((Class) entry2.getKey(), x.a((Collection<com.google.firebase.p.b<?>>) entry2.getValue()));
            } else {
                x<?> xVar = this.f14334c.get(entry2.getKey());
                Iterator it = ((Set) entry2.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(l.a(xVar, (com.google.firebase.p.b) it.next()));
                }
            }
        }
        return arrayList;
    }

    private n(Executor executor, Iterable<com.google.firebase.p.b<i>> iterable, Collection<d<?>> collection) {
        this.f14332a = new HashMap();
        this.f14333b = new HashMap();
        this.f14334c = new HashMap();
        this.f14337f = new AtomicReference<>();
        this.f14336e = new u(executor);
        ArrayList arrayList = new ArrayList();
        arrayList.add(d.a(this.f14336e, u.class, com.google.firebase.n.d.class, com.google.firebase.n.c.class));
        arrayList.add(d.a(this, com.google.firebase.l.a.class, new Class[0]));
        for (d<?> dVar : collection) {
            if (dVar != null) {
                arrayList.add(dVar);
            }
        }
        this.f14335d = a(iterable);
        a((List<d<?>>) arrayList);
    }

    public static b a(Executor executor) {
        return new b(executor);
    }

    private void a(List<d<?>> list) {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<com.google.firebase.p.b<i>> it = this.f14335d.iterator();
            while (it.hasNext()) {
                try {
                    i iVar = it.next().get();
                    if (iVar != null) {
                        list.addAll(iVar.getComponents());
                        it.remove();
                    }
                } catch (v unused) {
                    it.remove();
                }
            }
            if (this.f14332a.isEmpty()) {
                p.a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.f14332a.keySet());
                arrayList2.addAll(list);
                p.a(arrayList2);
            }
            for (d<?> dVar : list) {
                this.f14332a.put(dVar, new w(j.a(this, dVar)));
            }
            arrayList.addAll(b(list));
            arrayList.addAll(c());
            b();
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((Runnable) it2.next()).run();
        }
        a();
    }

    @Override // com.google.firebase.components.e
    public synchronized <T> com.google.firebase.p.b<T> b(Class<T> cls) {
        c0.a(cls, "Null interface requested.");
        return (com.google.firebase.p.b) this.f14333b.get(cls);
    }

    private void b() {
        for (d<?> dVar : this.f14332a.keySet()) {
            for (q qVar : dVar.a()) {
                if (qVar.e() && !this.f14334c.containsKey(qVar.a())) {
                    this.f14334c.put(qVar.a(), x.a(Collections.emptySet()));
                } else if (this.f14333b.containsKey(qVar.a())) {
                    continue;
                } else if (!qVar.d()) {
                    if (!qVar.e()) {
                        this.f14333b.put(qVar.a(), b0.a());
                    }
                } else {
                    throw new y(String.format("Unsatisfied dependency for component %s: %s", dVar, qVar.a()));
                }
            }
        }
    }

    @Override // com.google.firebase.components.e
    public synchronized <T> com.google.firebase.p.b<Set<T>> c(Class<T> cls) {
        x<?> xVar = this.f14334c.get(cls);
        if (xVar != null) {
            return xVar;
        }
        return (com.google.firebase.p.b<Set<T>>) f14331g;
    }

    private void a() {
        Boolean bool = this.f14337f.get();
        if (bool != null) {
            a(this.f14332a, bool.booleanValue());
        }
    }

    private static <T> List<T> a(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public void a(boolean z) {
        HashMap hashMap;
        if (this.f14337f.compareAndSet(null, Boolean.valueOf(z))) {
            synchronized (this) {
                hashMap = new HashMap(this.f14332a);
            }
            a(hashMap, z);
        }
    }

    private void a(Map<d<?>, com.google.firebase.p.b<?>> map, boolean z) {
        for (Map.Entry<d<?>, com.google.firebase.p.b<?>> entry : map.entrySet()) {
            d<?> key = entry.getKey();
            com.google.firebase.p.b<?> value = entry.getValue();
            if (key.e() || (key.f() && z)) {
                value.get();
            }
        }
        this.f14336e.a();
    }
}
