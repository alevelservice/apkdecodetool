package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EmptyImmutableListMultimap.java */
@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
public class o extends y<Object, Object> {
    static final o INSTANCE = new o();
    private static final long serialVersionUID = 0;

    private o() {
        super(z.of(), 0);
    }

    private Object readResolve() {
        return INSTANCE;
    }
}
