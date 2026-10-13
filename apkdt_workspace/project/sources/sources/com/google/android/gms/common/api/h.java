package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.m;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public abstract class h<R extends m> {

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public interface a {
        @KeepForSdk
        void a(Status status);
    }

    @NonNull
    public abstract R a(long j2, @NonNull TimeUnit timeUnit);

    @KeepForSdk
    public abstract void a(@NonNull a aVar);
}
