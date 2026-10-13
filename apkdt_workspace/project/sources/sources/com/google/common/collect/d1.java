package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Platform.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Set<E> a() {
        return l.create();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Map<K, V> b() {
        return k.create();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] a(T[] tArr, int i2) {
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] a(Object[] objArr, int i2, int i3, T[] tArr) {
        return (T[]) Arrays.copyOfRange(objArr, i2, i3, tArr.getClass());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static q0 a(q0 q0Var) {
        q0Var.g();
        return q0Var;
    }
}
