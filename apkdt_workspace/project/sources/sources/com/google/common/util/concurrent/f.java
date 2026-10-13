package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.util.concurrent.a;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: SettableFuture.java */
@GwtCompatible
/* loaded from: classes.dex */
public final class f<V> extends a.j<V> {
    private f() {
    }

    public static <V> f<V> g() {
        return new f<>();
    }

    @Override // com.google.common.util.concurrent.a
    @CanIgnoreReturnValue
    public boolean a(@NullableDecl V v) {
        return super.a((f<V>) v);
    }

    @Override // com.google.common.util.concurrent.a
    @CanIgnoreReturnValue
    public boolean a(Throwable th) {
        return super.a(th);
    }
}
