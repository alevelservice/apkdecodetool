package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class ex0<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: e, reason: collision with root package name */
    private static final Object[] f6544e = new Object[0];

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
        return toArray(f6544e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zza(Object[] objArr, int i2) {
        ay0 ay0Var = (ay0) iterator();
        while (ay0Var.hasNext()) {
            objArr[i2] = ay0Var.next();
            i2++;
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: zzaoe, reason: merged with bridge method [inline-methods] */
    public abstract ay0<E> iterator();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object[] zzaof() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzaog() {
        throw new UnsupportedOperationException();
    }

    int zzaoh() {
        throw new UnsupportedOperationException();
    }

    public jx0<E> zzaoi() {
        return isEmpty() ? jx0.zzaok() : jx0.zzc(toArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean zzaoj();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        uw0.a(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] zzaof = zzaof();
            if (zzaof != null) {
                return (T[]) Arrays.copyOfRange(zzaof, zzaog(), zzaoh(), tArr.getClass());
            }
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        zza(tArr, 0);
        return tArr;
    }
}
