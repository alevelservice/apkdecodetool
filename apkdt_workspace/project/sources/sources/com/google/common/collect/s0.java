package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.z;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Maps.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class s0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* compiled from: Maps.java */
    /* loaded from: classes.dex */
    public static class a<K, V> extends s1<Map.Entry<K, V>, K> {
        a(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.s1
        public K a(Map.Entry<K, V> entry) {
            return entry.getKey();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* compiled from: Maps.java */
    /* loaded from: classes.dex */
    public static class b<K, V> extends s1<Map.Entry<K, V>, V> {
        b(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.s1
        public V a(Map.Entry<K, V> entry) {
            return entry.getValue();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Maps.java */
    /* loaded from: classes.dex */
    private static abstract class c implements e.i.c.a.d<Map.Entry<?, ?>, Object> {
        public static final c KEY = new a("KEY", 0);
        public static final c VALUE = new b("VALUE", 1);

        /* renamed from: e, reason: collision with root package name */
        private static final /* synthetic */ c[] f14184e = {KEY, VALUE};

        /* compiled from: Maps.java */
        /* loaded from: classes.dex */
        enum a extends c {
            a(String str, int i2) {
                super(str, i2, null);
            }

            @Override // e.i.c.a.d
            @NullableDecl
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        }

        /* compiled from: Maps.java */
        /* loaded from: classes.dex */
        enum b extends c {
            b(String str, int i2) {
                super(str, i2, null);
            }

            @Override // e.i.c.a.d
            @NullableDecl
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        }

        private c(String str, int i2) {
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) f14184e.clone();
        }

        /* synthetic */ c(String str, int i2, a aVar) {
            this(str, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K> e.i.c.a.d<Map.Entry<K, ?>, K> a() {
        return c.KEY;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> e.i.c.a.d<Map.Entry<?, V>, V> b() {
        return c.VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(Map<?, ?> map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    static <K, V> Iterator<K> a(Iterator<Map.Entry<K, V>> it) {
        return new a(it);
    }

    static <K, V> Iterator<V> b(Iterator<Map.Entry<K, V>> it) {
        return new b(it);
    }

    @GwtCompatible(serializable = true)
    public static <K, V> Map.Entry<K, V> a(@NullableDecl K k2, @NullableDecl V v) {
        return new w(k2, v);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(Map<?, ?> map, @NullableDecl Object obj) {
        return m0.a((Iterator<?>) b(map.entrySet().iterator()), obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Map<?, ?> map, @NullableDecl Object obj) {
        return m0.a((Iterator<?>) a(map.entrySet().iterator()), obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Map<?, ?> map) {
        StringBuilder a2 = j.a(map.size());
        a2.append('{');
        boolean z = true;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (!z) {
                a2.append(", ");
            }
            z = false;
            a2.append(entry.getKey());
            a2.append('=');
            a2.append(entry.getValue());
        }
        a2.append('}');
        return a2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void a(Map<K, V> map, Map<? extends K, ? extends V> map2) {
        for (Map.Entry<? extends K, ? extends V> entry : map2.entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> z<E, Integer> a(Collection<E> collection) {
        z.b bVar = new z.b(collection.size());
        Iterator<E> it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            bVar.a(it.next(), Integer.valueOf(i2));
            i2++;
        }
        return bVar.a();
    }
}
