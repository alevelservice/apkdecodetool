package com.android.installreferrer.api;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public abstract class InstallReferrerClient {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface InstallReferrerResponse {
        public static final int DEVELOPER_ERROR = 3;
        public static final int FEATURE_NOT_SUPPORTED = 2;
        public static final int OK = 0;
        public static final int SERVICE_DISCONNECTED = -1;
        public static final int SERVICE_UNAVAILABLE = 1;
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private final Context f3357a;

        @UiThread
        public InstallReferrerClient a() {
            Context context = this.f3357a;
            if (context != null) {
                return new InstallReferrerClientImpl(context);
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }

        private b(Context context) {
            this.f3357a = context;
        }
    }

    @UiThread
    public static b a(@NonNull Context context) {
        return new b(context);
    }

    @UiThread
    public abstract void a();

    @UiThread
    public abstract void a(@NonNull com.android.installreferrer.api.a aVar);

    @UiThread
    public abstract com.android.installreferrer.api.b b();
}
