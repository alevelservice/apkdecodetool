package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ge1<E> implements Iterator<E> {

    /* renamed from: e, reason: collision with root package name */
    private int f6860e = 0;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ de1 f6861f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ge1(de1 de1Var) {
        this.f6861f = de1Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6860e < this.f6861f.f6209e.size() || this.f6861f.f6210f.hasNext();
    }

    @Override // java.util.Iterator
    public final E next() {
        while (this.f6860e >= this.f6861f.f6209e.size()) {
            de1 de1Var = this.f6861f;
            de1Var.f6209e.add(de1Var.f6210f.next());
        }
        List<E> list = this.f6861f.f6209e;
        int i2 = this.f6860e;
        this.f6860e = i2 + 1;
        return list.get(i2);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
