package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.ListIterator;

/* compiled from: UnmodifiableListIterator.java */
@GwtCompatible
/* loaded from: classes.dex */
public abstract class u1<E> extends t1<E> implements ListIterator<E> {
    @Override // java.util.ListIterator
    @Deprecated
    public final void add(E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    @Deprecated
    public final void set(E e2) {
        throw new UnsupportedOperationException();
    }
}
