package com.google.android.gms.internal.vision;

import java.util.ListIterator;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class m7 implements ListIterator<String> {

    /* renamed from: e, reason: collision with root package name */
    private ListIterator<String> f12437e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ int f12438f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ n7 f12439g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m7(n7 n7Var, int i2) {
        k5 k5Var;
        this.f12439g = n7Var;
        this.f12438f = i2;
        k5Var = this.f12439g.f12454e;
        this.f12437e = k5Var.listIterator(this.f12438f);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f12437e.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f12437e.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f12437e.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f12437e.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f12437e.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f12437e.previousIndex();
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
