package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* compiled from: CollectPreconditions.java */
@GwtCompatible
/* loaded from: classes.dex */
final class i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=" + obj2);
        }
        if (obj2 != null) {
            return;
        }
        throw new NullPointerException("null value in entry: " + obj + "=null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(int i2, String str) {
        if (i2 > 0) {
            return;
        }
        throw new IllegalArgumentException(str + " must be positive but was: " + i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public static int a(int i2, String str) {
        if (i2 >= 0) {
            return i2;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(boolean z) {
        e.i.c.a.j.b(z, "no calls to next() since the last call to remove()");
    }
}
