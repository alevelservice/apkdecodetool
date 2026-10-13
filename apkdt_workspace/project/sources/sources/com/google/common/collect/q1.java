package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Comparator;
import java.util.SortedSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SortedIterables.java */
@GwtCompatible
/* loaded from: classes.dex */
public final class q1 {
    public static boolean a(Comparator<?> comparator, Iterable<?> iterable) {
        Comparator comparator2;
        e.i.c.a.j.a(comparator);
        e.i.c.a.j.a(iterable);
        if (iterable instanceof SortedSet) {
            comparator2 = a((SortedSet) iterable);
        } else {
            if (!(iterable instanceof p1)) {
                return false;
            }
            comparator2 = ((p1) iterable).comparator();
        }
        return comparator.equals(comparator2);
    }

    public static <E> Comparator<? super E> a(SortedSet<E> sortedSet) {
        Comparator<? super E> comparator = sortedSet.comparator();
        return comparator == null ? c1.natural() : comparator;
    }
}
