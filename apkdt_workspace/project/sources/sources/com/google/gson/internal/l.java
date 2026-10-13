package com.google.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* compiled from: UnsafeAllocator.java */
/* loaded from: classes.dex */
public abstract class l {

    /* compiled from: UnsafeAllocator.java */
    /* loaded from: classes.dex */
    class a extends l {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Method f15461a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f15462b;

        a(Method method, Object obj) {
            this.f15461a = method;
            this.f15462b = obj;
        }

        @Override // com.google.gson.internal.l
        public <T> T a(Class<T> cls) {
            l.b(cls);
            return (T) this.f15461a.invoke(this.f15462b, cls);
        }
    }

    /* compiled from: UnsafeAllocator.java */
    /* loaded from: classes.dex */
    class b extends l {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Method f15463a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f15464b;

        b(Method method, int i2) {
            this.f15463a = method;
            this.f15464b = i2;
        }

        @Override // com.google.gson.internal.l
        public <T> T a(Class<T> cls) {
            l.b(cls);
            return (T) this.f15463a.invoke(null, cls, Integer.valueOf(this.f15464b));
        }
    }

    /* compiled from: UnsafeAllocator.java */
    /* loaded from: classes.dex */
    class c extends l {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Method f15465a;

        c(Method method) {
            this.f15465a = method;
        }

        @Override // com.google.gson.internal.l
        public <T> T a(Class<T> cls) {
            l.b(cls);
            return (T) this.f15465a.invoke(null, cls, Object.class);
        }
    }

    /* compiled from: UnsafeAllocator.java */
    /* loaded from: classes.dex */
    class d extends l {
        d() {
        }

        @Override // com.google.gson.internal.l
        public <T> T a(Class<T> cls) {
            throw new UnsupportedOperationException("Cannot allocate " + cls);
        }
    }

    public static l a() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return new a(cls.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception unused) {
            try {
                try {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    return new b(declaredMethod2, intValue);
                } catch (Exception unused2) {
                    return new d();
                }
            } catch (Exception unused3) {
                Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                declaredMethod3.setAccessible(true);
                return new c(declaredMethod3);
            }
        }
    }

    static void b(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (!Modifier.isInterface(modifiers)) {
            if (Modifier.isAbstract(modifiers)) {
                throw new UnsupportedOperationException("Abstract class can't be instantiated! Class name: " + cls.getName());
            }
            return;
        }
        throw new UnsupportedOperationException("Interface can't be instantiated! Interface name: " + cls.getName());
    }

    public abstract <T> T a(Class<T> cls);
}
