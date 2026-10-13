package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.e0;
import com.google.common.collect.v0;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegularImmutableMultiset.java */
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public class g1<E> extends e0<E> {
    static final g1<Object> EMPTY = new g1<>(b1.d());
    final transient b1<E> contents;

    /* renamed from: h, reason: collision with root package name */
    private final transient int f14098h;

    /* renamed from: i, reason: collision with root package name */
    @LazyInit
    private transient g0<E> f14099i;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RegularImmutableMultiset.java */
    /* loaded from: classes.dex */
    public final class b extends k0<E> {
        private b() {
        }

        @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return g1.this.contains(obj);
        }

        @Override // com.google.common.collect.k0
        E get(int i2) {
            return g1.this.contents.c(i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.v
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return g1.this.contents.c();
        }
    }

    /* compiled from: RegularImmutableMultiset.java */
    @GwtIncompatible
    /* loaded from: classes.dex */
    private static class c implements Serializable {
        private static final long serialVersionUID = 0;
        final int[] counts;
        final Object[] elements;

        c(v0<?> v0Var) {
            int size = v0Var.entrySet().size();
            this.elements = new Object[size];
            this.counts = new int[size];
            int i2 = 0;
            for (v0.a<?> aVar : v0Var.entrySet()) {
                this.elements[i2] = aVar.getElement();
                this.counts[i2] = aVar.getCount();
                i2++;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        Object readResolve() {
            e0.b bVar = new e0.b(this.elements.length);
            int i2 = 0;
            while (true) {
                Object[] objArr = this.elements;
                if (i2 < objArr.length) {
                    bVar.a((e0.b) objArr[i2], this.counts[i2]);
                    i2++;
                } else {
                    return bVar.a();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g1(b1<E> b1Var) {
        this.contents = b1Var;
        long j2 = 0;
        for (int i2 = 0; i2 < b1Var.c(); i2++) {
            j2 += b1Var.d(i2);
        }
        this.f14098h = e.i.c.c.a.a(j2);
    }

    @Override // com.google.common.collect.v0
    public int count(@NullableDecl Object obj) {
        return this.contents.a(obj);
    }

    @Override // com.google.common.collect.e0
    v0.a<E> getEntry(int i2) {
        return this.contents.b(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.v0
    public int size() {
        return this.f14098h;
    }

    @Override // com.google.common.collect.e0, com.google.common.collect.v
    @GwtIncompatible
    Object writeReplace() {
        return new c(this);
    }

    @Override // com.google.common.collect.e0, com.google.common.collect.v0
    public g0<E> elementSet() {
        g0<E> g0Var = this.f14099i;
        if (g0Var != null) {
            return g0Var;
        }
        b bVar = new b();
        this.f14099i = bVar;
        return bVar;
    }
}
