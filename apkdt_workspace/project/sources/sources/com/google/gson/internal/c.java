package com.google.gson.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* compiled from: ConstructorConstructor.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private final Map<Type, com.google.gson.f<?>> f15430a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.gson.internal.m.b f15431b = com.google.gson.internal.m.b.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class a<T> implements com.google.gson.internal.h<T> {
        a(c cVar) {
        }

        @Override // com.google.gson.internal.h
        public T a() {
            return (T) new ConcurrentHashMap();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class b<T> implements com.google.gson.internal.h<T> {
        b(c cVar) {
        }

        @Override // com.google.gson.internal.h
        public T a() {
            return (T) new TreeMap();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* renamed from: com.google.gson.internal.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0145c<T> implements com.google.gson.internal.h<T> {
        C0145c(c cVar) {
        }

        @Override // com.google.gson.internal.h
        public T a() {
            return (T) new LinkedHashMap();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class d<T> implements com.google.gson.internal.h<T> {
        d(c cVar) {
        }

        @Override // com.google.gson.internal.h
        public T a() {
            return (T) new com.google.gson.internal.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class e<T> implements com.google.gson.internal.h<T> {

        /* renamed from: a, reason: collision with root package name */
        private final com.google.gson.internal.l f15432a = com.google.gson.internal.l.a();

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Class f15433b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Type f15434c;

        e(c cVar, Class cls, Type type) {
            this.f15433b = cls;
            this.f15434c = type;
        }

        @Override // com.google.gson.internal.h
        public T a() {
            try {
                return (T) this.f15432a.a(this.f15433b);
            } catch (Exception e2) {
                throw new RuntimeException("Unable to invoke no-args constructor for " + this.f15434c + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e2);
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    class f<T> implements com.google.gson.internal.h<T> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.google.gson.f f15435a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Type f15436b;

        f(c cVar, com.google.gson.f fVar, Type type) {
            this.f15435a = fVar;
            this.f15436b = type;
        }

        @Override // com.google.gson.internal.h
        public T a() {
            return (T) this.f15435a.a(this.f15436b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    class g<T> implements com.google.gson.internal.h<T> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.google.gson.f f15437a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Type f15438b;

        g(c cVar, com.google.gson.f fVar, Type type) {
            this.f15437a = fVar;
            this.f15438b = type;
        }

        @Override // com.google.gson.internal.h
        public T a() {
            return (T) this.f15437a.a(this.f15438b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class h<T> implements com.google.gson.internal.h<T> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Constructor f15439a;

        h(c cVar, Constructor constructor) {
            this.f15439a = constructor;
        }

        @Override // com.google.gson.internal.h
        public T a() {
            try {
                return (T) this.f15439a.newInstance(null);
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            } catch (InstantiationException e3) {
                throw new RuntimeException("Failed to invoke " + this.f15439a + " with no args", e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException("Failed to invoke " + this.f15439a + " with no args", e4.getTargetException());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class i<T> implements com.google.gson.internal.h<T> {
        i(c cVar) {
        }

        @Override // com.google.gson.internal.h
        public T a() {
            return (T) new TreeSet();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class j<T> implements com.google.gson.internal.h<T> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Type f15440a;

        j(c cVar, Type type) {
            this.f15440a = type;
        }

        @Override // com.google.gson.internal.h
        public T a() {
            Type type = this.f15440a;
            if (type instanceof ParameterizedType) {
                Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                if (type2 instanceof Class) {
                    return (T) EnumSet.noneOf((Class) type2);
                }
                throw new com.google.gson.i("Invalid EnumSet type: " + this.f15440a.toString());
            }
            throw new com.google.gson.i("Invalid EnumSet type: " + this.f15440a.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class k<T> implements com.google.gson.internal.h<T> {
        k(c cVar) {
        }

        @Override // com.google.gson.internal.h
        public T a() {
            return (T) new LinkedHashSet();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class l<T> implements com.google.gson.internal.h<T> {
        l(c cVar) {
        }

        @Override // com.google.gson.internal.h
        public T a() {
            return (T) new ArrayDeque();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class m<T> implements com.google.gson.internal.h<T> {
        m(c cVar) {
        }

        @Override // com.google.gson.internal.h
        public T a() {
            return (T) new ArrayList();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class n<T> implements com.google.gson.internal.h<T> {
        n(c cVar) {
        }

        @Override // com.google.gson.internal.h
        public T a() {
            return (T) new ConcurrentSkipListMap();
        }
    }

    public c(Map<Type, com.google.gson.f<?>> map) {
        this.f15430a = map;
    }

    private <T> com.google.gson.internal.h<T> b(Type type, Class<? super T> cls) {
        return new e(this, cls, type);
    }

    public <T> com.google.gson.internal.h<T> a(com.google.gson.q.a<T> aVar) {
        Type type = aVar.getType();
        Class<? super T> rawType = aVar.getRawType();
        com.google.gson.f<?> fVar = this.f15430a.get(type);
        if (fVar != null) {
            return new f(this, fVar, type);
        }
        com.google.gson.f<?> fVar2 = this.f15430a.get(rawType);
        if (fVar2 != null) {
            return new g(this, fVar2, type);
        }
        com.google.gson.internal.h<T> a2 = a(rawType);
        if (a2 != null) {
            return a2;
        }
        com.google.gson.internal.h<T> a3 = a(type, rawType);
        return a3 != null ? a3 : b(type, rawType);
    }

    public String toString() {
        return this.f15430a.toString();
    }

    private <T> com.google.gson.internal.h<T> a(Class<? super T> cls) {
        try {
            Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.f15431b.a(declaredConstructor);
            }
            return new h(this, declaredConstructor);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private <T> com.google.gson.internal.h<T> a(Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                return new i(this);
            }
            if (EnumSet.class.isAssignableFrom(cls)) {
                return new j(this, type);
            }
            if (Set.class.isAssignableFrom(cls)) {
                return new k(this);
            }
            if (Queue.class.isAssignableFrom(cls)) {
                return new l(this);
            }
            return new m(this);
        }
        if (!Map.class.isAssignableFrom(cls)) {
            return null;
        }
        if (ConcurrentNavigableMap.class.isAssignableFrom(cls)) {
            return new n(this);
        }
        if (ConcurrentMap.class.isAssignableFrom(cls)) {
            return new a(this);
        }
        if (SortedMap.class.isAssignableFrom(cls)) {
            return new b(this);
        }
        if ((type instanceof ParameterizedType) && !String.class.isAssignableFrom(com.google.gson.q.a.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) {
            return new C0145c(this);
        }
        return new d(this);
    }
}
