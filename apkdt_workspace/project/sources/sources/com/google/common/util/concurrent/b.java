package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: FutureCallback.java */
@GwtCompatible
/* loaded from: classes.dex */
public interface b<V> {
    void a(@NullableDecl V v);

    void a(Throwable th);
}
