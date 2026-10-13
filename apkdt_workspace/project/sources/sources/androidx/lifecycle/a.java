package androidx.lifecycle;

import androidx.annotation.Nullable;
import androidx.lifecycle.e;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ClassesInfoCache.java */
/* loaded from: classes.dex */
class a {

    /* renamed from: c, reason: collision with root package name */
    static a f2342c = new a();

    /* renamed from: a, reason: collision with root package name */
    private final Map<Class<?>, C0041a> f2343a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private final Map<Class<?>, Boolean> f2344b = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClassesInfoCache.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        final int f2347a;

        /* renamed from: b, reason: collision with root package name */
        final Method f2348b;

        b(int i2, Method method) {
            this.f2347a = i2;
            this.f2348b = method;
            this.f2348b.setAccessible(true);
        }

        void a(h hVar, e.a aVar, Object obj) {
            try {
                int i2 = this.f2347a;
                if (i2 == 0) {
                    this.f2348b.invoke(obj, new Object[0]);
                } else if (i2 == 1) {
                    this.f2348b.invoke(obj, hVar);
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    this.f2348b.invoke(obj, hVar, aVar);
                }
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException("Failed to call observer method", e3.getCause());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.f2347a == bVar.f2347a && this.f2348b.getName().equals(bVar.f2348b.getName());
        }

        public int hashCode() {
            return (this.f2347a * 31) + this.f2348b.getName().hashCode();
        }
    }

    a() {
    }

    private Method[] c(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e2) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0041a a(Class<?> cls) {
        C0041a c0041a = this.f2343a.get(cls);
        return c0041a != null ? c0041a : a(cls, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(Class<?> cls) {
        Boolean bool = this.f2344b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] c2 = c(cls);
        for (Method method : c2) {
            if (((OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class)) != null) {
                a(cls, c2);
                return true;
            }
        }
        this.f2344b.put(cls, false);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClassesInfoCache.java */
    /* renamed from: androidx.lifecycle.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0041a {

        /* renamed from: a, reason: collision with root package name */
        final Map<e.a, List<b>> f2345a = new HashMap();

        /* renamed from: b, reason: collision with root package name */
        final Map<b, e.a> f2346b;

        C0041a(Map<b, e.a> map) {
            this.f2346b = map;
            for (Map.Entry<b, e.a> entry : map.entrySet()) {
                e.a value = entry.getValue();
                List<b> list = this.f2345a.get(value);
                if (list == null) {
                    list = new ArrayList<>();
                    this.f2345a.put(value, list);
                }
                list.add(entry.getKey());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(h hVar, e.a aVar, Object obj) {
            a(this.f2345a.get(aVar), hVar, aVar, obj);
            a(this.f2345a.get(e.a.ON_ANY), hVar, aVar, obj);
        }

        private static void a(List<b> list, h hVar, e.a aVar, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).a(hVar, aVar, obj);
                }
            }
        }
    }

    private void a(Map<b, e.a> map, b bVar, e.a aVar, Class<?> cls) {
        e.a aVar2 = map.get(bVar);
        if (aVar2 == null || aVar == aVar2) {
            if (aVar2 == null) {
                map.put(bVar, aVar);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + bVar.f2348b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + aVar2 + ", new value " + aVar);
    }

    private C0041a a(Class<?> cls, @Nullable Method[] methodArr) {
        int i2;
        C0041a a2;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (a2 = a(superclass)) != null) {
            hashMap.putAll(a2.f2346b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<b, e.a> entry : a(cls2).f2346b.entrySet()) {
                a(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = c(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            OnLifecycleEvent onLifecycleEvent = (OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class);
            if (onLifecycleEvent != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i2 = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(h.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i2 = 1;
                }
                e.a value = onLifecycleEvent.value();
                if (parameterTypes.length > 1) {
                    if (parameterTypes[1].isAssignableFrom(e.a.class)) {
                        if (value != e.a.ON_ANY) {
                            throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                        }
                        i2 = 2;
                    } else {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                }
                if (parameterTypes.length <= 2) {
                    a(hashMap, new b(i2, method), value, cls);
                    z = true;
                } else {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
            }
        }
        C0041a c0041a = new C0041a(hashMap);
        this.f2343a.put(cls, c0041a);
        this.f2344b.put(cls, Boolean.valueOf(z));
        return c0041a;
    }
}
