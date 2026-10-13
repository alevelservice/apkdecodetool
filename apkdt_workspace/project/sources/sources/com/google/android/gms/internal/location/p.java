package com.google.android.gms.internal.location;

import android.os.Looper;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class p {
    public static Looper a() {
        com.google.android.gms.common.internal.m.b(Looper.myLooper() != null, "Can't create handler inside thread that has not called Looper.prepare()");
        return Looper.myLooper();
    }

    public static Looper a(@Nullable Looper looper) {
        return looper != null ? looper : a();
    }
}
