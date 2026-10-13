package com.google.android.gms.internal.vision;

import java.io.Serializable;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public abstract class g0<T> implements Serializable {
    public static <T> g0<T> zzb(T t) {
        j0.a(t);
        return new i0(t);
    }

    public static <T> g0<T> zzbx() {
        return d0.zzlf;
    }

    public abstract T get();

    public abstract boolean isPresent();
}
