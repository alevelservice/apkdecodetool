package com.facebook.common.internal;

import javax.annotation.Nullable;

/* compiled from: Throwables.java */
/* loaded from: classes.dex */
public final class l {
    public static <X extends Throwable> void a(@Nullable Throwable th, Class<X> cls) {
        if (th != null && cls.isInstance(th)) {
            throw cls.cast(th);
        }
    }

    public static void b(@Nullable Throwable th) {
        a(th, Error.class);
        a(th, RuntimeException.class);
    }

    public static RuntimeException a(Throwable th) {
        h.a(th);
        b(th);
        throw new RuntimeException(th);
    }
}
