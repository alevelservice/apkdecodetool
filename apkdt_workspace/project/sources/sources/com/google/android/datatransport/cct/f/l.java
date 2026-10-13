package com.google.android.datatransport.cct.f;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.f.f;

/* compiled from: LogEvent.java */
/* loaded from: classes.dex */
public abstract class l {

    /* compiled from: LogEvent.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        @NonNull
        public abstract a a(long j2);

        @NonNull
        public abstract a a(@Nullable o oVar);

        @NonNull
        public abstract a a(@Nullable Integer num);

        @NonNull
        abstract a a(@Nullable String str);

        @NonNull
        abstract a a(@Nullable byte[] bArr);

        @NonNull
        public abstract l a();

        @NonNull
        public abstract a b(long j2);

        @NonNull
        public abstract a c(long j2);
    }

    @NonNull
    public static a a(@NonNull byte[] bArr) {
        a h2 = h();
        h2.a(bArr);
        return h2;
    }

    private static a h() {
        return new f.b();
    }

    @Nullable
    public abstract Integer a();

    public abstract long b();

    public abstract long c();

    @Nullable
    public abstract o d();

    @Nullable
    public abstract byte[] e();

    @Nullable
    public abstract String f();

    public abstract long g();

    @NonNull
    public static a a(@NonNull String str) {
        a h2 = h();
        h2.a(str);
        return h2;
    }
}
