package com.google.android.gms.flags;

import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes.dex */
public final class c {

    /* renamed from: b, reason: collision with root package name */
    private static c f5471b;

    /* renamed from: a, reason: collision with root package name */
    private final b f5472a = new b();

    static {
        c cVar = new c();
        synchronized (c.class) {
            f5471b = cVar;
        }
    }

    private c() {
        new e();
    }

    @KeepForSdk
    public static b a() {
        return b().f5472a;
    }

    private static c b() {
        c cVar;
        synchronized (c.class) {
            cVar = f5471b;
        }
        return cVar;
    }
}
