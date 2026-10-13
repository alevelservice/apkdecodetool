package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Lists.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class p0 {

    /* compiled from: Lists.java */
    /* loaded from: classes.dex */
    private static class a<E> extends AbstractList<E> implements Serializable, RandomAccess {
        private static final long serialVersionUID = 0;

        @NullableDecl
        final E first;
        final E[] rest;

        a(@NullableDecl E e2, E[] eArr) {
            this.first = e2;
            e.i.c.a.j.a(eArr);
            this.rest = eArr;
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i2) {
            e.i.c.a.j.a(i2, size());
            return i2 == 0 ? this.first : this.rest[i2 - 1];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return e.i.c.b.a.b(this.rest.length, 1);
        }
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> a() {
        return new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(List<?> list, @NullableDecl Object obj) {
        if (list instanceof RandomAccess) {
            return c(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (e.i.c.a.h.a(obj, listIterator.next())) {
                return listIterator.previousIndex();
            }
        }
        return -1;
    }

    private static int c(List<?> list, @NullableDecl Object obj) {
        int size = list.size();
        int i2 = 0;
        if (obj == null) {
            while (i2 < size) {
                if (list.get(i2) == null) {
                    return i2;
                }
                i2++;
            }
            return -1;
        }
        while (i2 < size) {
            if (obj.equals(list.get(i2))) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(List<?> list, @NullableDecl Object obj) {
        if (list instanceof RandomAccess) {
            return e(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (e.i.c.a.h.a(obj, listIterator.previous())) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    private static int e(List<?> list, @NullableDecl Object obj) {
        if (obj == null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            if (obj.equals(list.get(size2))) {
                return size2;
            }
        }
        return -1;
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> a(Iterable<? extends E> iterable) {
        e.i.c.a.j.a(iterable);
        if (iterable instanceof Collection) {
            return new ArrayList<>(j.a(iterable));
        }
        return a(iterable.iterator());
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> a(Iterator<? extends E> it) {
        ArrayList<E> a2 = a();
        m0.a(a2, it);
        return a2;
    }

    public static <E> List<E> a(@NullableDecl E e2, E[] eArr) {
        return new a(e2, eArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(List<?> list, @NullableDecl Object obj) {
        e.i.c.a.j.a(list);
        if (obj == list) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list2 = (List) obj;
        int size = list.size();
        if (size != list2.size()) {
            return false;
        }
        if (!(list instanceof RandomAccess) || !(list2 instanceof RandomAccess)) {
            return m0.a(list.iterator(), (Iterator<?>) list2.iterator());
        }
        for (int i2 = 0; i2 < size; i2++) {
            if (!e.i.c.a.h.a(list.get(i2), list2.get(i2))) {
                return false;
            }
        }
        return true;
    }
}
