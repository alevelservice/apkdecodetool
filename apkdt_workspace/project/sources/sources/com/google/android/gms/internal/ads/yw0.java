package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
abstract class yw0<E> extends ey0<E> {

    /* renamed from: e, reason: collision with root package name */
    private final int f10662e;

    /* renamed from: f, reason: collision with root package name */
    private int f10663f;

    /* JADX INFO: Access modifiers changed from: protected */
    public yw0(int i2, int i3) {
        uw0.b(i3, i2);
        this.f10662e = i2;
        this.f10663f = i3;
    }

    protected abstract E a(int i2);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f10663f < this.f10662e;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f10663f > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i2 = this.f10663f;
            this.f10663f = i2 + 1;
            return a(i2);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f10663f;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i2 = this.f10663f - 1;
            this.f10663f = i2;
            return a(i2);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f10663f - 1;
    }
}
