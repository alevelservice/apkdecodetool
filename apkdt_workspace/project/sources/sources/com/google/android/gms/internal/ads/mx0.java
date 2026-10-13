package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class mx0<E> extends ex0<E> implements Set<E> {

    /* renamed from: f, reason: collision with root package name */
    @NullableDecl
    private transient jx0<E> f8248f;

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> mx0<E> a(int i2, Object... objArr) {
        while (i2 != 0) {
            if (i2 != 1) {
                int zzds = zzds(i2);
                Object[] objArr2 = new Object[zzds];
                int i3 = zzds - 1;
                int i4 = 0;
                int i5 = 0;
                for (int i6 = 0; i6 < i2; i6++) {
                    Object obj = objArr[i6];
                    qx0.a(obj, i6);
                    int hashCode = obj.hashCode();
                    int a2 = fx0.a(hashCode);
                    while (true) {
                        int i7 = a2 & i3;
                        Object obj2 = objArr2[i7];
                        if (obj2 == null) {
                            objArr[i5] = obj;
                            objArr2[i7] = obj;
                            i4 += hashCode;
                            i5++;
                            break;
                        }
                        if (!obj2.equals(obj)) {
                            a2++;
                        }
                    }
                }
                Arrays.fill(objArr, i5, i2, (Object) null);
                if (i5 == 1) {
                    return new cy0(objArr[0], i4);
                }
                if (zzds(i5) >= zzds / 2) {
                    if (a(i5, objArr.length)) {
                        objArr = Arrays.copyOf(objArr, i5);
                    }
                    return new zx0(objArr, i4, objArr2, i3, i5);
                }
                i2 = i5;
            } else {
                return zzae(objArr[0]);
            }
        }
        return zx0.zzgpg;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean a(int i2, int i3) {
        return i2 < (i3 >> 1) + (i3 >> 2);
    }

    @SafeVarargs
    public static <E> mx0<E> zza(E e2, E e3, E e4, E e5, E e6, E e7, E... eArr) {
        uw0.a(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        Object[] objArr = new Object[eArr.length + 6];
        objArr[0] = e2;
        objArr[1] = e3;
        objArr[2] = e4;
        objArr[3] = e5;
        objArr[4] = e6;
        objArr[5] = e7;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return a(objArr.length, objArr);
    }

    public static <E> mx0<E> zzae(E e2) {
        return new cy0(e2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzds(int i2) {
        int max = Math.max(i2, 2);
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1) << 1;
            while (true) {
                double d2 = highestOneBit;
                Double.isNaN(d2);
                if (d2 * 0.7d >= max) {
                    return highestOneBit;
                }
                highestOneBit <<= 1;
            }
        } else {
            uw0.a(max < 1073741824, "collection too large");
            return 1073741824;
        }
    }

    public static <E> px0<E> zzdt(int i2) {
        dx0.a(i2, "expectedSize");
        return new px0<>(i2);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof mx0) && zzaol() && ((mx0) obj).zzaol() && hashCode() != obj.hashCode()) {
            return false;
        }
        return yx0.a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return yx0.a(this);
    }

    @Override // com.google.android.gms.internal.ads.ex0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.ads.ex0
    public jx0<E> zzaoi() {
        jx0<E> jx0Var = this.f8248f;
        if (jx0Var != null) {
            return jx0Var;
        }
        jx0<E> zzaom = zzaom();
        this.f8248f = zzaom;
        return zzaom;
    }

    boolean zzaol() {
        return false;
    }

    jx0<E> zzaom() {
        return jx0.zzc(toArray());
    }
}
