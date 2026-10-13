package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Iterables.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class l0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] a(Iterable<? extends T> iterable, T[] tArr) {
        return (T[]) a(iterable).toArray(tArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] b(Iterable<?> iterable) {
        return a(iterable).toArray();
    }

    private static <E> Collection<E> a(Iterable<E> iterable) {
        return iterable instanceof Collection ? (Collection) iterable : p0.a(iterable.iterator());
    }

    @NullableDecl
    public static <T> T a(Iterable<? extends T> iterable, @NullableDecl T t) {
        return (T) m0.b(iterable.iterator(), t);
    }
}
