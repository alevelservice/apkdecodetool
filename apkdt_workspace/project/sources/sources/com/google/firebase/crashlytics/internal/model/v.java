package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* compiled from: ImmutableList.java */
/* loaded from: classes.dex */
public final class v<E> implements List<E>, RandomAccess {

    /* renamed from: e, reason: collision with root package name */
    private final List<E> f14942e;

    private v(List<E> list) {
        this.f14942e = Collections.unmodifiableList(list);
    }

    @NonNull
    public static <E> v<E> a(E... eArr) {
        return new v<>(Arrays.asList(eArr));
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(@NonNull E e2) {
        return this.f14942e.add(e2);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(@NonNull Collection<? extends E> collection) {
        return this.f14942e.addAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.f14942e.clear();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(@Nullable Object obj) {
        return this.f14942e.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(@NonNull Collection<?> collection) {
        return this.f14942e.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(@Nullable Object obj) {
        return this.f14942e.equals(obj);
    }

    @Override // java.util.List
    @NonNull
    public E get(int i2) {
        return this.f14942e.get(i2);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.f14942e.hashCode();
    }

    @Override // java.util.List
    public int indexOf(@Nullable Object obj) {
        return this.f14942e.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.f14942e.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    @NonNull
    public Iterator<E> iterator() {
        return this.f14942e.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(@Nullable Object obj) {
        return this.f14942e.lastIndexOf(obj);
    }

    @Override // java.util.List
    @NonNull
    public ListIterator<E> listIterator() {
        return this.f14942e.listIterator();
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(@Nullable Object obj) {
        return this.f14942e.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(@NonNull Collection<?> collection) {
        return this.f14942e.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(@NonNull Collection<?> collection) {
        return this.f14942e.retainAll(collection);
    }

    @Override // java.util.List
    @NonNull
    public E set(int i2, @NonNull E e2) {
        return this.f14942e.set(i2, e2);
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.f14942e.size();
    }

    @Override // java.util.List
    @NonNull
    public List<E> subList(int i2, int i3) {
        return this.f14942e.subList(i2, i3);
    }

    @Override // java.util.List, java.util.Collection
    @Nullable
    public Object[] toArray() {
        return this.f14942e.toArray();
    }

    @NonNull
    public static <E> v<E> a(@NonNull List<E> list) {
        return new v<>(list);
    }

    @Override // java.util.List
    public void add(int i2, @NonNull E e2) {
        this.f14942e.add(i2, e2);
    }

    @Override // java.util.List
    public boolean addAll(int i2, @NonNull Collection<? extends E> collection) {
        return this.f14942e.addAll(i2, collection);
    }

    @Override // java.util.List
    @NonNull
    public ListIterator<E> listIterator(int i2) {
        return this.f14942e.listIterator(i2);
    }

    @Override // java.util.List
    public E remove(int i2) {
        return this.f14942e.remove(i2);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(@Nullable T[] tArr) {
        return (T[]) this.f14942e.toArray(tArr);
    }
}
