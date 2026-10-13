package com.google.android.datatransport.runtime.backends;

/* compiled from: BackendResponse.java */
/* loaded from: classes.dex */
public abstract class h {

    /* compiled from: BackendResponse.java */
    /* loaded from: classes.dex */
    public enum a {
        OK,
        TRANSIENT_ERROR,
        FATAL_ERROR
    }

    public static h a(long j2) {
        return new b(a.OK, j2);
    }

    public static h c() {
        return new b(a.FATAL_ERROR, -1L);
    }

    public static h d() {
        return new b(a.TRANSIENT_ERROR, -1L);
    }

    public abstract long a();

    public abstract a b();
}
