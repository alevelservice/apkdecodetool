package com.google.android.gms.internal.vision;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class n0 {
    public static <T> k0<T> a(k0<T> k0Var) {
        if ((k0Var instanceof p0) || (k0Var instanceof m0)) {
            return k0Var;
        }
        if (k0Var instanceof Serializable) {
            return new m0(k0Var);
        }
        return new p0(k0Var);
    }

    public static <T> k0<T> a(@NullableDecl T t) {
        return new o0(t);
    }
}
