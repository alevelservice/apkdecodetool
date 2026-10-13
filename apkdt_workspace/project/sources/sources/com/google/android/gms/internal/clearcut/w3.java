package com.google.android.gms.internal.clearcut;

import java.util.ListIterator;

/* loaded from: classes.dex */
final class w3 implements ListIterator<String> {

    /* renamed from: e, reason: collision with root package name */
    private ListIterator<String> f11589e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ int f11590f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ v3 f11591g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w3(v3 v3Var, int i2) {
        s1 s1Var;
        this.f11591g = v3Var;
        this.f11590f = i2;
        s1Var = this.f11591g.f11584e;
        this.f11589e = s1Var.listIterator(this.f11590f);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f11589e.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f11589e.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f11589e.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f11589e.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f11589e.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f11589e.previousIndex();
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
