package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NullsLastOrdering.java */
@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
public final class z0<T> extends c1<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final c1<? super T> ordering;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z0(c1<? super T> c1Var) {
        this.ordering = c1Var;
    }

    @Override // com.google.common.collect.c1, java.util.Comparator
    public int compare(@NullableDecl T t, @NullableDecl T t2) {
        if (t == t2) {
            return 0;
        }
        if (t == null) {
            return 1;
        }
        if (t2 == null) {
            return -1;
        }
        return this.ordering.compare(t, t2);
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof z0) {
            return this.ordering.equals(((z0) obj).ordering);
        }
        return false;
    }

    public int hashCode() {
        return this.ordering.hashCode() ^ (-921210296);
    }

    @Override // com.google.common.collect.c1
    public <S extends T> c1<S> nullsFirst() {
        return this.ordering.nullsFirst();
    }

    @Override // com.google.common.collect.c1
    public <S extends T> c1<S> nullsLast() {
        return this;
    }

    @Override // com.google.common.collect.c1
    public <S extends T> c1<S> reverse() {
        return this.ordering.reverse().nullsFirst();
    }

    public String toString() {
        return this.ordering + ".nullsLast()";
    }
}
