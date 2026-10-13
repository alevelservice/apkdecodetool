package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.lang.reflect.Array;

/* compiled from: ObjectArrays.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class a1 {
    @GwtIncompatible
    public static <T> T[] a(Class<T> cls, int i2) {
        return (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i2));
    }

    public static <T> T[] b(T[] tArr, int i2) {
        return (T[]) d1.a(tArr, i2);
    }

    @GwtIncompatible
    public static <T> T[] a(T[] tArr, T[] tArr2, Class<T> cls) {
        T[] tArr3 = (T[]) a((Class) cls, tArr.length + tArr2.length);
        System.arraycopy(tArr, 0, tArr3, 0, tArr.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] a(Object[] objArr, int i2, int i3, T[] tArr) {
        e.i.c.a.j.b(i2, i2 + i3, objArr.length);
        if (tArr.length < i3) {
            tArr = (T[]) b(tArr, i3);
        } else if (tArr.length > i3) {
            tArr[i3] = null;
        }
        System.arraycopy(objArr, i2, tArr, 0, i3);
        return tArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public static Object[] a(Object... objArr) {
        a(objArr, objArr.length);
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public static Object[] a(Object[] objArr, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            a(objArr[i3], i3);
        }
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public static Object a(Object obj, int i2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("at index " + i2);
    }
}
