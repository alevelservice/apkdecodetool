package com.google.android.datatransport.cct.f;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.f.g;
import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;

/* compiled from: LogRequest.java */
/* loaded from: classes.dex */
public abstract class m {

    /* compiled from: LogRequest.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        @NonNull
        public a a(int i2) {
            a(Integer.valueOf(i2));
            return this;
        }

        @NonNull
        public abstract a a(long j2);

        @NonNull
        public abstract a a(@Nullable k kVar);

        @NonNull
        public abstract a a(@Nullable p pVar);

        @NonNull
        abstract a a(@Nullable Integer num);

        @NonNull
        abstract a a(@Nullable String str);

        @NonNull
        public abstract a a(@Nullable List<l> list);

        @NonNull
        public abstract m a();

        @NonNull
        public abstract a b(long j2);

        @NonNull
        public a b(@NonNull String str) {
            a(str);
            return this;
        }
    }

    @NonNull
    public static a h() {
        return new g.b();
    }

    @Nullable
    public abstract k a();

    @Nullable
    @Encodable.Field(name = "logEvent")
    public abstract List<l> b();

    @Nullable
    public abstract Integer c();

    @Nullable
    public abstract String d();

    @Nullable
    public abstract p e();

    public abstract long f();

    public abstract long g();
}
