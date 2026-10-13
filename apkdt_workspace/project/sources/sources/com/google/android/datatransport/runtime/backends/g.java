package com.google.android.datatransport.runtime.backends;

import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.backends.a;

/* compiled from: BackendRequest.java */
/* loaded from: classes.dex */
public abstract class g {

    /* compiled from: BackendRequest.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract a a(Iterable<e.i.b.a.i.h> iterable);

        public abstract a a(@Nullable byte[] bArr);

        public abstract g a();
    }

    public static a c() {
        return new a.b();
    }

    public abstract Iterable<e.i.b.a.i.h> a();

    @Nullable
    public abstract byte[] b();
}
