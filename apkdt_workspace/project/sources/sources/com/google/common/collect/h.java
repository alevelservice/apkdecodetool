package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ByFunctionOrdering.java */
@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class h<F, T> extends c1<F> implements Serializable {
    private static final long serialVersionUID = 0;
    final e.i.c.a.d<F, ? extends T> function;
    final c1<T> ordering;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(e.i.c.a.d<F, ? extends T> dVar, c1<T> c1Var) {
        e.i.c.a.j.a(dVar);
        this.function = dVar;
        e.i.c.a.j.a(c1Var);
        this.ordering = c1Var;
    }

    @Override // com.google.common.collect.c1, java.util.Comparator
    public int compare(F f2, F f3) {
        return this.ordering.compare(this.function.apply(f2), this.function.apply(f3));
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.function.equals(hVar.function) && this.ordering.equals(hVar.ordering);
    }

    public int hashCode() {
        return e.i.c.a.h.a(this.function, this.ordering);
    }

    public String toString() {
        return this.ordering + ".onResultOf(" + this.function + ")";
    }
}
