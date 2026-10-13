package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class e2 {
    public static <T> f2<T> a(f2<T> f2Var) {
        if ((f2Var instanceof g2) || (f2Var instanceof h2)) {
            return f2Var;
        }
        if (f2Var instanceof Serializable) {
            return new h2(f2Var);
        }
        return new g2(f2Var);
    }

    public static <T> f2<T> a(@NullableDecl T t) {
        return new i2(t);
    }
}
