package com.google.firebase.components;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: CycleDetector.java */
/* loaded from: classes.dex */
class p {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CycleDetector.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final d<?> f14342a;

        /* renamed from: b, reason: collision with root package name */
        private final Set<b> f14343b = new HashSet();

        /* renamed from: c, reason: collision with root package name */
        private final Set<b> f14344c = new HashSet();

        b(d<?> dVar) {
            this.f14342a = dVar;
        }

        void a(b bVar) {
            this.f14343b.add(bVar);
        }

        void b(b bVar) {
            this.f14344c.add(bVar);
        }

        void c(b bVar) {
            this.f14344c.remove(bVar);
        }

        boolean d() {
            return this.f14344c.isEmpty();
        }

        d<?> a() {
            return this.f14342a;
        }

        Set<b> b() {
            return this.f14343b;
        }

        boolean c() {
            return this.f14343b.isEmpty();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CycleDetector.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        private final Class<?> f14345a;

        /* renamed from: b, reason: collision with root package name */
        private final boolean f14346b;

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return cVar.f14345a.equals(this.f14345a) && cVar.f14346b == this.f14346b;
        }

        public int hashCode() {
            return ((this.f14345a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f14346b).hashCode();
        }

        private c(Class<?> cls, boolean z) {
            this.f14345a = cls;
            this.f14346b = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(List<d<?>> list) {
        Set<b> b2 = b(list);
        Set<b> a2 = a(b2);
        int i2 = 0;
        while (!a2.isEmpty()) {
            b next = a2.iterator().next();
            a2.remove(next);
            i2++;
            for (b bVar : next.b()) {
                bVar.c(next);
                if (bVar.d()) {
                    a2.add(bVar);
                }
            }
        }
        if (i2 == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (b bVar2 : b2) {
            if (!bVar2.d() && !bVar2.c()) {
                arrayList.add(bVar2.a());
            }
        }
        throw new r(arrayList);
    }

    private static Set<b> b(List<d<?>> list) {
        Set<b> set;
        HashMap hashMap = new HashMap(list.size());
        Iterator<d<?>> it = list.iterator();
        while (true) {
            if (it.hasNext()) {
                d<?> next = it.next();
                b bVar = new b(next);
                for (Class<? super Object> cls : next.c()) {
                    c cVar = new c(cls, !next.g());
                    if (!hashMap.containsKey(cVar)) {
                        hashMap.put(cVar, new HashSet());
                    }
                    Set set2 = (Set) hashMap.get(cVar);
                    if (!set2.isEmpty() && !cVar.f14346b) {
                        throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                    }
                    set2.add(bVar);
                }
            } else {
                Iterator it2 = hashMap.values().iterator();
                while (it2.hasNext()) {
                    for (b bVar2 : (Set) it2.next()) {
                        for (q qVar : bVar2.a().a()) {
                            if (qVar.c() && (set = (Set) hashMap.get(new c(qVar.a(), qVar.e()))) != null) {
                                for (b bVar3 : set) {
                                    bVar2.a(bVar3);
                                    bVar3.b(bVar2);
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Iterator it3 = hashMap.values().iterator();
                while (it3.hasNext()) {
                    hashSet.addAll((Set) it3.next());
                }
                return hashSet;
            }
        }
    }

    private static Set<b> a(Set<b> set) {
        HashSet hashSet = new HashSet();
        for (b bVar : set) {
            if (bVar.d()) {
                hashSet.add(bVar);
            }
        }
        return hashSet;
    }
}
