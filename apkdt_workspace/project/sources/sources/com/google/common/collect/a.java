package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.NoSuchElementException;

/* compiled from: AbstractIndexedListIterator.java */
@GwtCompatible
/* loaded from: classes.dex */
abstract class a<E> extends u1<E> {

    /* renamed from: e, reason: collision with root package name */
    private final int f14031e;

    /* renamed from: f, reason: collision with root package name */
    private int f14032f;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(int i2, int i3) {
        e.i.c.a.j.b(i3, i2);
        this.f14031e = i2;
        this.f14032f = i3;
    }

    protected abstract E a(int i2);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f14032f < this.f14031e;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f14032f > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i2 = this.f14032f;
            this.f14032f = i2 + 1;
            return a(i2);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f14032f;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i2 = this.f14032f - 1;
            this.f14032f = i2;
            return a(i2);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f14032f - 1;
    }
}
