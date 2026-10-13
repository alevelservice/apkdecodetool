package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Iterator;

/* compiled from: TransformedIterator.java */
@GwtCompatible
/* loaded from: classes.dex */
abstract class s1<F, T> implements Iterator<T> {

    /* renamed from: e, reason: collision with root package name */
    final Iterator<? extends F> f14185e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s1(Iterator<? extends F> it) {
        e.i.c.a.j.a(it);
        this.f14185e = it;
    }

    abstract T a(F f2);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f14185e.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return a(this.f14185e.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f14185e.remove();
    }
}
