package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EmptyImmutableSetMultimap.java */
@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
public class p extends h0<Object, Object> {
    static final p INSTANCE = new p();
    private static final long serialVersionUID = 0;

    private p() {
        super(z.of(), 0, null);
    }

    private Object readResolve() {
        return INSTANCE;
    }
}
