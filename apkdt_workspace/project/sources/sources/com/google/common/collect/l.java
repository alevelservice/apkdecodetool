package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CompactHashSet.java */
@GwtIncompatible
/* loaded from: classes.dex */
public class l<E> extends AbstractSet<E> implements Serializable {

    @VisibleForTesting
    static final int DEFAULT_SIZE = 3;
    static final int UNSET = -1;

    /* renamed from: e, reason: collision with root package name */
    @MonotonicNonNullDecl
    private transient int[] f14127e;

    @MonotonicNonNullDecl
    transient Object[] elements;

    /* renamed from: f, reason: collision with root package name */
    @MonotonicNonNullDecl
    private transient long[] f14128f;

    /* renamed from: g, reason: collision with root package name */
    private transient int f14129g;
    transient int modCount;

    /* compiled from: CompactHashSet.java */
    /* loaded from: classes.dex */
    class a implements Iterator<E> {

        /* renamed from: e, reason: collision with root package name */
        int f14130e;

        /* renamed from: f, reason: collision with root package name */
        int f14131f;

        /* renamed from: g, reason: collision with root package name */
        int f14132g;

        a() {
            l lVar = l.this;
            this.f14130e = lVar.modCount;
            this.f14131f = lVar.firstEntryIndex();
            this.f14132g = -1;
        }

        private void a() {
            if (l.this.modCount != this.f14130e) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14131f >= 0;
        }

        @Override // java.util.Iterator
        public E next() {
            a();
            if (hasNext()) {
                int i2 = this.f14131f;
                this.f14132g = i2;
                l lVar = l.this;
                E e2 = (E) lVar.elements[i2];
                this.f14131f = lVar.getSuccessor(i2);
                return e2;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            a();
            i.a(this.f14132g >= 0);
            this.f14130e++;
            l lVar = l.this;
            lVar.remove(lVar.elements[this.f14132g], l.a(lVar.f14128f[this.f14132g]));
            this.f14131f = l.this.adjustAfterRemove(this.f14131f, this.f14132g);
            this.f14132g = -1;
        }
    }

    l() {
        init(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int a(long j2) {
        return (int) (j2 >>> 32);
    }

    private static long a(long j2, int i2) {
        return (j2 & (-4294967296L)) | (i2 & 4294967295L);
    }

    private static long[] a(int i2) {
        long[] jArr = new long[i2];
        Arrays.fill(jArr, -1L);
        return jArr;
    }

    private static int b(long j2) {
        return (int) j2;
    }

    private static int[] b(int i2) {
        int[] iArr = new int[i2];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    public static <E> l<E> create() {
        return new l<>();
    }

    public static <E> l<E> createWithExpectedSize(int i2) {
        return new l<>(i2);
    }

    private void m(int i2) {
        int length = this.f14128f.length;
        if (i2 > length) {
            int max = Math.max(1, length >>> 1) + length;
            if (max < 0) {
                max = Integer.MAX_VALUE;
            }
            if (max != length) {
                resizeEntries(max);
            }
        }
    }

    private void n(int i2) {
        int[] b2 = b(i2);
        long[] jArr = this.f14128f;
        int length = b2.length - 1;
        for (int i3 = 0; i3 < this.f14129g; i3++) {
            int a2 = a(jArr[i3]);
            int i4 = a2 & length;
            int i5 = b2[i4];
            b2[i4] = i3;
            jArr[i3] = (a2 << 32) | (4294967295L & i5);
        }
        this.f14127e = b2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt >= 0) {
            init(readInt);
            for (int i2 = 0; i2 < readInt; i2++) {
                add(objectInputStream.readObject());
            }
            return;
        }
        throw new InvalidObjectException("Invalid size: " + readInt);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.f14129g);
        int firstEntryIndex = firstEntryIndex();
        while (firstEntryIndex >= 0) {
            objectOutputStream.writeObject(this.elements[firstEntryIndex]);
            firstEntryIndex = getSuccessor(firstEntryIndex);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @CanIgnoreReturnValue
    public boolean add(@NullableDecl E e2) {
        if (needsAllocArrays()) {
            allocArrays();
        }
        long[] jArr = this.f14128f;
        Object[] objArr = this.elements;
        int a2 = u.a(e2);
        int a3 = a() & a2;
        int i2 = this.f14129g;
        int[] iArr = this.f14127e;
        int i3 = iArr[a3];
        if (i3 == -1) {
            iArr[a3] = i2;
        } else {
            while (true) {
                long j2 = jArr[i3];
                if (a(j2) == a2 && e.i.c.a.h.a(e2, objArr[i3])) {
                    return false;
                }
                int b2 = b(j2);
                if (b2 == -1) {
                    jArr[i3] = a(j2, i2);
                    break;
                }
                i3 = b2;
            }
        }
        if (i2 != Integer.MAX_VALUE) {
            int i4 = i2 + 1;
            m(i4);
            insertEntry(i2, e2, a2);
            this.f14129g = i4;
            int length = this.f14127e.length;
            if (u.a(i2, length, 1.0d)) {
                n(length * 2);
            }
            this.modCount++;
            return true;
        }
        throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
    }

    int adjustAfterRemove(int i2, int i3) {
        return i2 - 1;
    }

    void allocArrays() {
        e.i.c.a.j.b(needsAllocArrays(), "Arrays already allocated");
        int i2 = this.modCount;
        this.f14127e = b(u.a(i2, 1.0d));
        this.f14128f = a(i2);
        this.elements = new Object[i2];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        this.modCount++;
        Arrays.fill(this.elements, 0, this.f14129g, (Object) null);
        Arrays.fill(this.f14127e, -1);
        Arrays.fill(this.f14128f, 0, this.f14129g, -1L);
        this.f14129g = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        if (needsAllocArrays()) {
            return false;
        }
        int a2 = u.a(obj);
        int i2 = this.f14127e[a() & a2];
        while (i2 != -1) {
            long j2 = this.f14128f[i2];
            if (a(j2) == a2 && e.i.c.a.h.a(obj, this.elements[i2])) {
                return true;
            }
            i2 = b(j2);
        }
        return false;
    }

    int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    int getSuccessor(int i2) {
        int i3 = i2 + 1;
        if (i3 < this.f14129g) {
            return i3;
        }
        return -1;
    }

    void init(int i2) {
        e.i.c.a.j.a(i2 >= 0, "Initial capacity must be non-negative");
        this.modCount = Math.max(1, i2);
    }

    void insertEntry(int i2, E e2, int i3) {
        this.f14128f[i2] = (i3 << 32) | 4294967295L;
        this.elements[i2] = e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f14129g == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return new a();
    }

    void moveLastEntry(int i2) {
        int size = size() - 1;
        if (i2 < size) {
            Object[] objArr = this.elements;
            objArr[i2] = objArr[size];
            objArr[size] = null;
            long[] jArr = this.f14128f;
            long j2 = jArr[size];
            jArr[i2] = j2;
            jArr[size] = -1;
            int a2 = a(j2) & a();
            int[] iArr = this.f14127e;
            int i3 = iArr[a2];
            if (i3 == size) {
                iArr[a2] = i2;
                return;
            }
            while (true) {
                long j3 = this.f14128f[i3];
                int b2 = b(j3);
                if (b2 == size) {
                    this.f14128f[i3] = a(j3, i2);
                    return;
                }
                i3 = b2;
            }
        } else {
            this.elements[i2] = null;
            this.f14128f[i2] = -1;
        }
    }

    boolean needsAllocArrays() {
        return this.f14127e == null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @CanIgnoreReturnValue
    public boolean remove(@NullableDecl Object obj) {
        if (needsAllocArrays()) {
            return false;
        }
        return remove(obj, u.a(obj));
    }

    void resizeEntries(int i2) {
        this.elements = Arrays.copyOf(this.elements, i2);
        long[] jArr = this.f14128f;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i2);
        if (i2 > length) {
            Arrays.fill(copyOf, length, i2, -1L);
        }
        this.f14128f = copyOf;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f14129g;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        return needsAllocArrays() ? new Object[0] : Arrays.copyOf(this.elements, this.f14129g);
    }

    public void trimToSize() {
        if (needsAllocArrays()) {
            return;
        }
        int i2 = this.f14129g;
        if (i2 < this.f14128f.length) {
            resizeEntries(i2);
        }
        int a2 = u.a(i2, 1.0d);
        if (a2 < this.f14127e.length) {
            n(a2);
        }
    }

    public static <E> l<E> create(Collection<? extends E> collection) {
        l<E> createWithExpectedSize = createWithExpectedSize(collection.size());
        createWithExpectedSize.addAll(collection);
        return createWithExpectedSize;
    }

    l(int i2) {
        init(i2);
    }

    private int a() {
        return this.f14127e.length - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CanIgnoreReturnValue
    public boolean remove(Object obj, int i2) {
        int a2 = a() & i2;
        int i3 = this.f14127e[a2];
        if (i3 == -1) {
            return false;
        }
        int i4 = -1;
        while (true) {
            if (a(this.f14128f[i3]) == i2 && e.i.c.a.h.a(obj, this.elements[i3])) {
                if (i4 == -1) {
                    this.f14127e[a2] = b(this.f14128f[i3]);
                } else {
                    long[] jArr = this.f14128f;
                    jArr[i4] = a(jArr[i4], b(jArr[i3]));
                }
                moveLastEntry(i3);
                this.f14129g--;
                this.modCount++;
                return true;
            }
            int b2 = b(this.f14128f[i3]);
            if (b2 == -1) {
                return false;
            }
            i4 = i3;
            i3 = b2;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @CanIgnoreReturnValue
    public <T> T[] toArray(T[] tArr) {
        if (needsAllocArrays()) {
            if (tArr.length > 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        return (T[]) a1.a(this.elements, 0, this.f14129g, tArr);
    }

    public static <E> l<E> create(E... eArr) {
        l<E> createWithExpectedSize = createWithExpectedSize(eArr.length);
        Collections.addAll(createWithExpectedSize, eArr);
        return createWithExpectedSize;
    }
}
