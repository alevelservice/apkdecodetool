package com.google.firebase.installations;

import androidx.annotation.NonNull;
import com.google.firebase.installations.a;

/* compiled from: InstallationTokenResult.java */
/* loaded from: classes.dex */
public abstract class l {

    /* compiled from: InstallationTokenResult.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        @NonNull
        public abstract a a(long j2);

        @NonNull
        public abstract a a(@NonNull String str);

        @NonNull
        public abstract l a();

        @NonNull
        public abstract a b(long j2);
    }

    @NonNull
    public static a d() {
        return new a.b();
    }

    @NonNull
    public abstract String a();

    @NonNull
    public abstract long b();

    @NonNull
    public abstract long c();
}
