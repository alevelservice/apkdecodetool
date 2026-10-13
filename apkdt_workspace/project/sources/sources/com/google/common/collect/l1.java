package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.v0;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* compiled from: Serialization.java */
@GwtIncompatible
/* loaded from: classes.dex */
final class l1 {

    /* compiled from: Serialization.java */
    /* loaded from: classes.dex */
    static final class b<T> {

        /* renamed from: a, reason: collision with root package name */
        private final Field f14134a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(T t, Object obj) {
            try {
                this.f14134a.set(t, obj);
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        }

        private b(Field field) {
            this.f14134a = field;
            field.setAccessible(true);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(T t, int i2) {
            try {
                this.f14134a.set(t, Integer.valueOf(i2));
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(ObjectInputStream objectInputStream) {
        return objectInputStream.readInt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> void a(v0<E> v0Var, ObjectOutputStream objectOutputStream) {
        objectOutputStream.writeInt(v0Var.entrySet().size());
        for (v0.a<E> aVar : v0Var.entrySet()) {
            objectOutputStream.writeObject(aVar.getElement());
            objectOutputStream.writeInt(aVar.getCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <E> void a(v0<E> v0Var, ObjectInputStream objectInputStream, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            v0Var.add(objectInputStream.readObject(), objectInputStream.readInt());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void a(t0<K, V> t0Var, ObjectOutputStream objectOutputStream) {
        objectOutputStream.writeInt(t0Var.asMap().size());
        for (Map.Entry<K, Collection<V>> entry : t0Var.asMap().entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(entry.getValue().size());
            Iterator<V> it = entry.getValue().iterator();
            while (it.hasNext()) {
                objectOutputStream.writeObject(it.next());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> b<T> a(Class<T> cls, String str) {
        try {
            return new b<>(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e2) {
            throw new AssertionError(e2);
        }
    }
}
