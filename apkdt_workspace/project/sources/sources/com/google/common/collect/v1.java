package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;

/* compiled from: UsingToStringOrdering.java */
@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class v1 extends c1<Object> implements Serializable {
    static final v1 INSTANCE = new v1();
    private static final long serialVersionUID = 0;

    private v1() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // com.google.common.collect.c1, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return obj.toString().compareTo(obj2.toString());
    }

    public String toString() {
        return "Ordering.usingToString()";
    }
}
