package com.google.android.gms.internal.ads;

import java.util.ListIterator;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class zb1 implements ListIterator<String> {

    /* renamed from: e, reason: collision with root package name */
    private ListIterator<String> f10722e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ int f10723f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ ac1 f10724g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zb1(ac1 ac1Var, int i2) {
        v91 v91Var;
        this.f10724g = ac1Var;
        this.f10723f = i2;
        v91Var = this.f10724g.f5559e;
        this.f10722e = v91Var.listIterator(this.f10723f);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f10722e.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f10722e.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f10722e.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f10722e.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f10722e.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f10722e.previousIndex();
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
