package com.google.android.datatransport.cct.f;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.f.e;

/* compiled from: ClientInfo.java */
/* loaded from: classes.dex */
public abstract class k {

    /* compiled from: ClientInfo.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        @NonNull
        public abstract a a(@Nullable com.google.android.datatransport.cct.f.a aVar);

        @NonNull
        public abstract a a(@Nullable b bVar);

        @NonNull
        public abstract k a();
    }

    /* compiled from: ClientInfo.java */
    /* loaded from: classes.dex */
    public enum b {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);

        private final int value;

        b(int i2) {
            this.value = i2;
        }
    }

    @NonNull
    public static a c() {
        return new e.b();
    }

    @Nullable
    public abstract com.google.android.datatransport.cct.f.a a();

    @Nullable
    public abstract b b();
}
