package com.google.firebase.installations.r;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.installations.r.b;

/* compiled from: TokenResult.java */
/* loaded from: classes.dex */
public abstract class f {

    /* compiled from: TokenResult.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        @NonNull
        public abstract a a(long j2);

        @NonNull
        public abstract a a(@NonNull b bVar);

        @NonNull
        public abstract a a(@NonNull String str);

        @NonNull
        public abstract f a();
    }

    /* compiled from: TokenResult.java */
    /* loaded from: classes.dex */
    public enum b {
        OK,
        BAD_CONFIG,
        AUTH_ERROR
    }

    @NonNull
    public static a d() {
        b.C0138b c0138b = new b.C0138b();
        c0138b.a(0L);
        return c0138b;
    }

    @Nullable
    public abstract b a();

    @Nullable
    public abstract String b();

    @NonNull
    public abstract long c();
}
