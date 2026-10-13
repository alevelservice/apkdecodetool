package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NaturalOrdering.java */
@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
public final class x0 extends c1<Comparable> implements Serializable {
    static final x0 INSTANCE = new x0();
    private static final long serialVersionUID = 0;

    /* renamed from: e, reason: collision with root package name */
    @MonotonicNonNullDecl
    private transient c1<Comparable> f14199e;

    /* renamed from: f, reason: collision with root package name */
    @MonotonicNonNullDecl
    private transient c1<Comparable> f14200f;

    private x0() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // com.google.common.collect.c1
    public <S extends Comparable> c1<S> nullsFirst() {
        c1<S> c1Var = (c1<S>) this.f14199e;
        if (c1Var != null) {
            return c1Var;
        }
        c1<S> nullsFirst = super.nullsFirst();
        this.f14199e = nullsFirst;
        return nullsFirst;
    }

    @Override // com.google.common.collect.c1
    public <S extends Comparable> c1<S> nullsLast() {
        c1<S> c1Var = (c1<S>) this.f14200f;
        if (c1Var != null) {
            return c1Var;
        }
        c1<S> nullsLast = super.nullsLast();
        this.f14200f = nullsLast;
        return nullsLast;
    }

    @Override // com.google.common.collect.c1
    public <S extends Comparable> c1<S> reverse() {
        return j1.INSTANCE;
    }

    public String toString() {
        return "Ordering.natural()";
    }

    @Override // com.google.common.collect.c1, java.util.Comparator
    public int compare(Comparable comparable, Comparable comparable2) {
        e.i.c.a.j.a(comparable);
        e.i.c.a.j.a(comparable2);
        return comparable.compareTo(comparable2);
    }
}
