package com.google.android.gms.internal.vision;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public abstract class t0<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: e, reason: collision with root package name */
    private static final Object[] f12531e = new Object[0];

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(@NullableDecl Object obj);

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(f12531e);
    }

    int zza(Object[] objArr, int i2) {
        i1 i1Var = (i1) iterator();
        while (i1Var.hasNext()) {
            objArr[i2] = i1Var.next();
            i2++;
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: zzby, reason: merged with bridge method [inline-methods] */
    public abstract i1<E> iterator();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object[] zzbz() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzca() {
        throw new UnsupportedOperationException();
    }

    int zzcb() {
        throw new UnsupportedOperationException();
    }

    public w0<E> zzcc() {
        return isEmpty() ? w0.zzcd() : w0.zza(toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        j0.a(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] zzbz = zzbz();
            if (zzbz != null) {
                return (T[]) Arrays.copyOfRange(zzbz, zzca(), zzcb(), tArr.getClass());
            }
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        zza(tArr, 0);
        return tArr;
    }
}
