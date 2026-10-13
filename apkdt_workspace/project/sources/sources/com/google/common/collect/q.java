package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.c1;
import java.io.Serializable;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExplicitOrdering.java */
@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
public final class q<T> extends c1<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final z<T, Integer> rankMap;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(List<T> list) {
        this(s0.a(list));
    }

    private int a(T t) {
        Integer num = this.rankMap.get(t);
        if (num != null) {
            return num.intValue();
        }
        throw new c1.c(t);
    }

    @Override // com.google.common.collect.c1, java.util.Comparator
    public int compare(T t, T t2) {
        return a(t) - a(t2);
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof q) {
            return this.rankMap.equals(((q) obj).rankMap);
        }
        return false;
    }

    public int hashCode() {
        return this.rankMap.hashCode();
    }

    public String toString() {
        return "Ordering.explicit(" + this.rankMap.keySet() + ")";
    }

    q(z<T, Integer> zVar) {
        this.rankMap = zVar;
    }
}
