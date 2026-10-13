package com.google.android.gms.internal.vision;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public abstract class w0<E> extends t0<E> implements List<E>, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private static final h1<Object> f12563f = new v0(z0.zzlt, 0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> w0<E> zza(Object[] objArr) {
        int length = objArr.length;
        if (length == 0) {
            return (w0<E>) z0.zzlt;
        }
        return new z0(objArr, length);
    }

    public static <E> w0<E> zzcd() {
        return (w0<E>) z0.zzlt;
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i2, E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i2, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.vision.t0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@NullableDecl Object obj) {
        j0.a(this);
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i2 = 0; i2 < size; i2++) {
                        if (h0.a(get(i2), list.get(i2))) {
                        }
                    }
                    return true;
                }
                int size2 = size();
                Iterator<E> it = list.iterator();
                int i3 = 0;
                while (true) {
                    if (i3 < size2) {
                        if (!it.hasNext()) {
                            break;
                        }
                        E e2 = get(i3);
                        i3++;
                        if (!h0.a(e2, it.next())) {
                            break;
                        }
                    } else if (!it.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i2 = 1;
        for (int i3 = 0; i3 < size; i3++) {
            i2 = (((i2 * 31) + get(i3).hashCode()) ^ (-1)) ^ (-1);
        }
        return i2;
    }

    @Override // java.util.List
    public int indexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        int i2 = 0;
        if (obj == null) {
            while (i2 < size) {
                if (get(i2) == null) {
                    return i2;
                }
                i2++;
            }
        } else {
            while (i2 < size) {
                if (obj.equals(get(i2))) {
                    return i2;
                }
                i2++;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public int lastIndexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        if (obj == null) {
            for (int size = size() - 1; size >= 0; size--) {
                if (get(size) == null) {
                    return size;
                }
            }
        } else {
            for (int size2 = size() - 1; size2 >= 0; size2--) {
                if (obj.equals(get(size2))) {
                    return size2;
                }
            }
        }
        return -1;
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator(int i2) {
        j0.b(i2, size());
        if (isEmpty()) {
            return f12563f;
        }
        return new v0(this, i2);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i2, E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.vision.t0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: zzby */
    public final i1<E> iterator() {
        return (h1) listIterator();
    }

    @Override // com.google.android.gms.internal.vision.t0
    public final w0<E> zzcc() {
        return this;
    }

    @Override // java.util.List
    /* renamed from: zze */
    public w0<E> subList(int i2, int i3) {
        j0.a(i2, i3, size());
        int i4 = i3 - i2;
        if (i4 == size()) {
            return this;
        }
        if (i4 == 0) {
            return (w0<E>) z0.zzlt;
        }
        return new y0(this, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.t0
    public int zza(Object[] objArr, int i2) {
        int size = size();
        for (int i3 = 0; i3 < size; i3++) {
            objArr[i2 + i3] = get(i3);
        }
        return i2 + size;
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator() {
        return (h1) listIterator(0);
    }
}
