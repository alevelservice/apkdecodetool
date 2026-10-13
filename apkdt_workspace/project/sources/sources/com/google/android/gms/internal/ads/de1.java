package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class de1<E> extends AbstractList<E> {

    /* renamed from: g, reason: collision with root package name */
    private static final fe1 f6208g = fe1.a(de1.class);

    /* renamed from: e, reason: collision with root package name */
    List<E> f6209e;

    /* renamed from: f, reason: collision with root package name */
    Iterator<E> f6210f;

    public de1(List<E> list, Iterator<E> it) {
        this.f6209e = list;
        this.f6210f = it;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i2) {
        if (this.f6209e.size() > i2) {
            return this.f6209e.get(i2);
        }
        if (this.f6210f.hasNext()) {
            this.f6209e.add(this.f6210f.next());
            return get(i2);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new ge1(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        f6208g.a("potentially expensive size() call");
        f6208g.a("blowup running");
        while (this.f6210f.hasNext()) {
            this.f6209e.add(this.f6210f.next());
        }
        return this.f6209e.size();
    }
}
