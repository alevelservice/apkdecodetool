package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: UncheckedTimeoutException.java */
@GwtIncompatible
/* loaded from: classes.dex */
public class j extends RuntimeException {
    private static final long serialVersionUID = 0;

    public j() {
    }

    public j(@NullableDecl String str) {
        super(str);
    }

    public j(@NullableDecl Throwable th) {
        super(th);
    }

    public j(@NullableDecl String str, @NullableDecl Throwable th) {
        super(str, th);
    }
}
