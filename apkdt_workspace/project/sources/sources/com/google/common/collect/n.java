package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;

/* compiled from: CompoundOrdering.java */
@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class n<T> extends c1<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final Comparator<? super T>[] comparators;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Comparator<? super T> comparator, Comparator<? super T> comparator2) {
        this.comparators = new Comparator[]{comparator, comparator2};
    }

    @Override // com.google.common.collect.c1, java.util.Comparator
    public int compare(T t, T t2) {
        int i2 = 0;
        while (true) {
            Comparator<? super T>[] comparatorArr = this.comparators;
            if (i2 >= comparatorArr.length) {
                return 0;
            }
            int compare = comparatorArr[i2].compare(t, t2);
            if (compare != 0) {
                return compare;
            }
            i2++;
        }
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof n) {
            return Arrays.equals(this.comparators, ((n) obj).comparators);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.comparators);
    }

    public String toString() {
        return "Ordering.compound(" + Arrays.toString(this.comparators) + ")";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Iterable<? extends Comparator<? super T>> iterable) {
        this.comparators = (Comparator[]) l0.a((Iterable) iterable, (Object[]) new Comparator[0]);
    }
}
