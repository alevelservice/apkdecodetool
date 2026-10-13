package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class jx0<E> extends ex0<E> implements List<E>, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private static final ey0<Object> f7579f = new lx0(tx0.zzgpb, 0);

    public static <E> jx0<E> zzad(E e2) {
        Object[] objArr = {e2};
        for (int i2 = 0; i2 <= 0; i2++) {
            qx0.a(objArr[0], 0);
        }
        return zzb(objArr, 1);
    }

    public static <E> jx0<E> zzaok() {
        return (jx0<E>) tx0.zzgpb;
    }

    public static <E> jx0<E> zzb(E[] eArr) {
        if (eArr.length == 0) {
            return (jx0<E>) tx0.zzgpb;
        }
        Object[] objArr = (Object[]) eArr.clone();
        int length = objArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            qx0.a(objArr[i2], i2);
        }
        return zzb(objArr, objArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> jx0<E> zzc(Object[] objArr) {
        return zzb(objArr, objArr.length);
    }

    public static <E> jx0<E> zzf(Iterable<? extends E> iterable) {
        uw0.a(iterable);
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection instanceof ex0) {
                jx0<E> zzaoi = ((ex0) collection).zzaoi();
                if (!zzaoi.zzaoj()) {
                    return zzaoi;
                }
                Object[] array = zzaoi.toArray();
                return zzb(array, array.length);
            }
            Object[] array2 = collection.toArray();
            int length = array2.length;
            for (int i2 = 0; i2 < length; i2++) {
                qx0.a(array2[i2], i2);
            }
            return zzb(array2, array2.length);
        }
        Iterator<? extends E> it = iterable.iterator();
        if (!it.hasNext()) {
            return (jx0<E>) tx0.zzgpb;
        }
        E next = it.next();
        if (!it.hasNext()) {
            return zzad(next);
        }
        ix0 ix0Var = new ix0();
        ix0Var.a(next);
        ix0 ix0Var2 = ix0Var;
        ix0Var2.a((Iterator) it);
        ix0 ix0Var3 = ix0Var2;
        ix0Var3.f7200c = true;
        return zzb(ix0Var3.f7198a, ix0Var3.f7199b);
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

    @Override // com.google.android.gms.internal.ads.ex0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@NullableDecl Object obj) {
        uw0.a(this);
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i2 = 0; i2 < size; i2++) {
                        if (sw0.a(get(i2), list.get(i2))) {
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
                        if (!sw0.a(e2, it.next())) {
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
        uw0.b(i2, size());
        if (isEmpty()) {
            return f7579f;
        }
        return new lx0(this, i2);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public int zza(Object[] objArr, int i2) {
        int size = size();
        for (int i3 = 0; i3 < size; i3++) {
            objArr[i2 + i3] = get(i3);
        }
        return i2 + size;
    }

    @Override // com.google.android.gms.internal.ads.ex0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: zzaoe */
    public final ay0<E> iterator() {
        return (ey0) listIterator();
    }

    @Override // com.google.android.gms.internal.ads.ex0
    public final jx0<E> zzaoi() {
        return this;
    }

    @Override // java.util.List
    /* renamed from: zzt */
    public jx0<E> subList(int i2, int i3) {
        uw0.a(i2, i3, size());
        int i4 = i3 - i2;
        if (i4 == size()) {
            return this;
        }
        if (i4 == 0) {
            return (jx0<E>) tx0.zzgpb;
        }
        return new kx0(this, i2, i4);
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator() {
        return (ey0) listIterator(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> jx0<E> zzb(Object[] objArr, int i2) {
        if (i2 == 0) {
            return (jx0<E>) tx0.zzgpb;
        }
        return new tx0(objArr, i2);
    }
}
