package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

/* compiled from: ForwardingObject.java */
@GwtCompatible
/* loaded from: classes.dex */
public abstract class t {
    protected abstract Object delegate();

    public String toString() {
        return delegate().toString();
    }
}
