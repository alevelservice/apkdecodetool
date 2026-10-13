package com.google.android.gms.internal.measurement;

import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class z1<T> implements Serializable {
    public static <T> z1<T> zzf(T t) {
        c2.a(t);
        return new b2(t);
    }

    public static <T> z1<T> zzrp() {
        return x1.zzabp;
    }

    public abstract T get();

    public abstract boolean isPresent();
}
