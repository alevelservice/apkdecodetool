package com.google.android.gms.internal.ads;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class vw0<T> implements Serializable {
    public static <T> vw0<T> zzz(@NullableDecl T t) {
        if (t == null) {
            return nw0.zzgoc;
        }
        return new xw0(t);
    }

    @NullableDecl
    public abstract T zzaoa();
}
