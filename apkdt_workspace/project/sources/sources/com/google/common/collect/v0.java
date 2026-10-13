package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.CompatibleWith;
import java.util.Collection;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Multiset.java */
@GwtCompatible
/* loaded from: classes.dex */
public interface v0<E> extends Collection<E> {

    /* compiled from: Multiset.java */
    /* loaded from: classes.dex */
    public interface a<E> {
        int getCount();

        E getElement();
    }

    @CanIgnoreReturnValue
    int add(@NullableDecl E e2, int i2);

    boolean contains(@NullableDecl Object obj);

    @Override // java.util.Collection
    boolean containsAll(Collection<?> collection);

    int count(@NullableDecl @CompatibleWith("E") Object obj);

    Set<E> elementSet();

    Set<a<E>> entrySet();

    @CanIgnoreReturnValue
    int remove(@NullableDecl @CompatibleWith("E") Object obj, int i2);

    @CanIgnoreReturnValue
    boolean remove(@NullableDecl Object obj);

    @CanIgnoreReturnValue
    boolean setCount(E e2, int i2, int i3);

    int size();
}
