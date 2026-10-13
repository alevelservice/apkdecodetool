package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.k;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class l {
    @KeepForSdk
    public static <L> k<L> a(@NonNull L l2, @NonNull Looper looper, @NonNull String str) {
        com.google.android.gms.common.internal.m.a(l2, "Listener must not be null");
        com.google.android.gms.common.internal.m.a(looper, "Looper must not be null");
        com.google.android.gms.common.internal.m.a(str, (Object) "Listener type must not be null");
        return new k<>(looper, l2, str);
    }

    @KeepForSdk
    public static <L> k.a<L> a(@NonNull L l2, @NonNull String str) {
        com.google.android.gms.common.internal.m.a(l2, "Listener must not be null");
        com.google.android.gms.common.internal.m.a(str, (Object) "Listener type must not be null");
        com.google.android.gms.common.internal.m.a(str, (Object) "Listener type must not be empty");
        return new k.a<>(l2, str);
    }
}
