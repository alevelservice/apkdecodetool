package com.alibaba.fastjson.e;

import java.lang.reflect.Type;

/* compiled from: IdentityHashMap.java */
/* loaded from: classes.dex */
public class b<V> {

    /* renamed from: a, reason: collision with root package name */
    private final a<V>[] f3288a;

    /* renamed from: b, reason: collision with root package name */
    private final int f3289b;

    /* compiled from: IdentityHashMap.java */
    /* loaded from: classes.dex */
    protected static final class a<V> {

        /* renamed from: a, reason: collision with root package name */
        public final Type f3290a;

        /* renamed from: b, reason: collision with root package name */
        public V f3291b;

        /* renamed from: c, reason: collision with root package name */
        public final a<V> f3292c;

        public a(Type type, V v, int i2, a<V> aVar) {
            this.f3290a = type;
            this.f3291b = v;
            this.f3292c = aVar;
        }
    }

    public b(int i2) {
        this.f3289b = i2 - 1;
        this.f3288a = new a[i2];
    }

    public final V a(Type type) {
        for (a<V> aVar = this.f3288a[System.identityHashCode(type) & this.f3289b]; aVar != null; aVar = aVar.f3292c) {
            if (type == aVar.f3290a) {
                return aVar.f3291b;
            }
        }
        return null;
    }

    public boolean a(Type type, V v) {
        int identityHashCode = System.identityHashCode(type);
        int i2 = this.f3289b & identityHashCode;
        for (a<V> aVar = this.f3288a[i2]; aVar != null; aVar = aVar.f3292c) {
            if (type == aVar.f3290a) {
                aVar.f3291b = v;
                return true;
            }
        }
        this.f3288a[i2] = new a<>(type, v, identityHashCode, this.f3288a[i2]);
        return false;
    }

    public Class a(String str) {
        int i2 = 0;
        while (true) {
            a<V>[] aVarArr = this.f3288a;
            if (i2 >= aVarArr.length) {
                return null;
            }
            a<V> aVar = aVarArr[i2];
            if (aVar != null) {
                for (a<V> aVar2 = aVar; aVar2 != null; aVar2 = aVar2.f3292c) {
                    Type type = aVar.f3290a;
                    if (type instanceof Class) {
                        Class cls = (Class) type;
                        if (cls.getName().equals(str)) {
                            return cls;
                        }
                    }
                }
            }
            i2++;
        }
    }
}
