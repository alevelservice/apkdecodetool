package com.google.firebase.installations.r;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.installations.r.a;

/* compiled from: InstallationResponse.java */
/* loaded from: classes.dex */
public abstract class d {

    /* compiled from: InstallationResponse.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        @NonNull
        public abstract a a(@NonNull b bVar);

        @NonNull
        public abstract a a(@NonNull f fVar);

        @NonNull
        public abstract a a(@NonNull String str);

        @NonNull
        public abstract d a();

        @NonNull
        public abstract a b(@NonNull String str);

        @NonNull
        public abstract a c(@NonNull String str);
    }

    /* compiled from: InstallationResponse.java */
    /* loaded from: classes.dex */
    public enum b {
        OK,
        BAD_CONFIG
    }

    @NonNull
    public static a f() {
        return new a.b();
    }

    @Nullable
    public abstract f a();

    @Nullable
    public abstract String b();

    @Nullable
    public abstract String c();

    @Nullable
    public abstract b d();

    @Nullable
    public abstract String e();
}
