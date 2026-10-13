package com.google.android.gms.internal.vision;

import java.util.NoSuchElementException;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
abstract class s0<E> extends h1<E> {

    /* renamed from: e, reason: collision with root package name */
    private final int f12500e;

    /* renamed from: f, reason: collision with root package name */
    private int f12501f;

    /* JADX INFO: Access modifiers changed from: protected */
    public s0(int i2, int i3) {
        j0.b(i3, i2);
        this.f12500e = i2;
        this.f12501f = i3;
    }

    protected abstract E a(int i2);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f12501f < this.f12500e;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f12501f > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i2 = this.f12501f;
            this.f12501f = i2 + 1;
            return a(i2);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f12501f;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i2 = this.f12501f - 1;
            this.f12501f = i2;
            return a(i2);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f12501f - 1;
    }
}
