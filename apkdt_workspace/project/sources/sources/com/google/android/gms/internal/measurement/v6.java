package com.google.android.gms.internal.measurement;

import java.util.ListIterator;

/* loaded from: classes.dex */
final class v6 implements ListIterator<String> {

    /* renamed from: e, reason: collision with root package name */
    private ListIterator<String> f12151e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ int f12152f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ w6 f12153g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v6(w6 w6Var, int i2) {
        s4 s4Var;
        this.f12153g = w6Var;
        this.f12152f = i2;
        s4Var = this.f12153g.f12178e;
        this.f12151e = s4Var.listIterator(this.f12152f);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f12151e.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f12151e.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f12151e.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f12151e.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f12151e.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f12151e.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
