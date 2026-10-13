package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Sets.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class n1 {

    /* compiled from: Sets.java */
    /* loaded from: classes.dex */
    static abstract class a<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return n1.a((Set<?>) this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            e.i.c.a.j.a(collection);
            return super.retainAll(collection);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i2 = ((i2 + (next != null ? next.hashCode() : 0)) ^ (-1)) ^ (-1);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Set<?> set, @NullableDecl Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    static boolean a(Set<?> set, Iterator<?> it) {
        boolean z = false;
        while (it.hasNext()) {
            z |= set.remove(it.next());
        }
        return z;
    }

    static boolean a(Set<?> set, Collection<?> collection) {
        e.i.c.a.j.a(collection);
        if (collection instanceof v0) {
            collection = ((v0) collection).elementSet();
        }
        if ((collection instanceof Set) && collection.size() > set.size()) {
            return m0.a(set.iterator(), collection);
        }
        return a(set, collection.iterator());
    }
}
