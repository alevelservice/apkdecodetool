package com.google.android.gms.internal.clearcut;

import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class p0 {

    /* renamed from: a, reason: collision with root package name */
    static final p0 f11525a;

    static {
        a();
        f11525a = new p0(true);
    }

    p0() {
        new HashMap();
    }

    private p0(boolean z) {
        Collections.emptyMap();
    }

    private static Class<?> a() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static p0 b() {
        return o0.b();
    }
}
