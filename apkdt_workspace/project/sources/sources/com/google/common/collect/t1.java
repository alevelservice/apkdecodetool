package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Iterator;

/* compiled from: UnmodifiableIterator.java */
@GwtCompatible
/* loaded from: classes.dex */
public abstract class t1<E> implements Iterator<E> {
    @Override // java.util.Iterator
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
