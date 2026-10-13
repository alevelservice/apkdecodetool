package com.facebook.common.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: ImmutableList.java */
/* loaded from: classes.dex */
public class d<E> extends ArrayList<E> {
    private d(int i2) {
        super(i2);
    }

    public static <E> d<E> copyOf(List<E> list) {
        return new d<>(list);
    }

    public static <E> d<E> of(E... eArr) {
        d<E> dVar = new d<>(eArr.length);
        Collections.addAll(dVar, eArr);
        return dVar;
    }

    private d(List<E> list) {
        super(list);
    }
}
