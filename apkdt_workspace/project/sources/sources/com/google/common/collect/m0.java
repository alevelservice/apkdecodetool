package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Iterators.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class m0 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Iterators.java */
    /* loaded from: classes.dex */
    static class a<T> extends t1<T> {

        /* renamed from: e, reason: collision with root package name */
        boolean f14135e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ Object f14136f;

        a(Object obj) {
            this.f14136f = obj;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f14135e;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.f14135e) {
                this.f14135e = true;
                return (T) this.f14136f;
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Iterators.java */
    /* loaded from: classes.dex */
    public static final class b<T> extends com.google.common.collect.a<T> {

        /* renamed from: i, reason: collision with root package name */
        static final u1<Object> f14137i = new b(new Object[0], 0, 0, 0);

        /* renamed from: g, reason: collision with root package name */
        private final T[] f14138g;

        /* renamed from: h, reason: collision with root package name */
        private final int f14139h;

        b(T[] tArr, int i2, int i3, int i4) {
            super(i3, i4);
            this.f14138g = tArr;
            this.f14139h = i2;
        }

        @Override // com.google.common.collect.a
        protected T a(int i2) {
            return this.f14138g[this.f14139h + i2];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> t1<T> a() {
        return b();
    }

    static <T> u1<T> b() {
        return (u1<T>) b.f14137i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0014, code lost:
    
        if (r2.hasNext() == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x001e, code lost:
    
        if (r3.equals(r2.next()) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0020, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0001, code lost:
    
        if (r3 == null) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0007, code lost:
    
        if (r2.hasNext() == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
    
        if (r2.next() != null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000f, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.util.Iterator<?> r2, @org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object r3) {
        /*
            r0 = 1
            if (r3 != 0) goto L10
        L3:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L21
            java.lang.Object r3 = r2.next()
            if (r3 != 0) goto L3
            return r0
        L10:
            boolean r1 = r2.hasNext()
            if (r1 == 0) goto L21
            java.lang.Object r1 = r2.next()
            boolean r1 = r3.equals(r1)
            if (r1 == 0) goto L10
            return r0
        L21:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.m0.a(java.util.Iterator, java.lang.Object):boolean");
    }

    @NullableDecl
    public static <T> T b(Iterator<? extends T> it, @NullableDecl T t) {
        return it.hasNext() ? it.next() : t;
    }

    @CanIgnoreReturnValue
    public static boolean a(Iterator<?> it, Collection<?> collection) {
        e.i.c.a.j.a(collection);
        boolean z = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static boolean a(Iterator<?> it, Iterator<?> it2) {
        while (it.hasNext()) {
            if (!it2.hasNext() || !e.i.c.a.h.a(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    @CanIgnoreReturnValue
    public static <T> boolean a(Collection<T> collection, Iterator<? extends T> it) {
        e.i.c.a.j.a(collection);
        e.i.c.a.j.a(it);
        boolean z = false;
        while (it.hasNext()) {
            z |= collection.add(it.next());
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Iterator<?> it) {
        e.i.c.a.j.a(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static <T> t1<T> a(@NullableDecl T t) {
        return new a(t);
    }
}
