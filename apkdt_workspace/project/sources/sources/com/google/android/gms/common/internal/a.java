package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class a {
    @NonNull
    @KeepForSdk
    public static com.google.android.gms.common.api.b a(@NonNull Status status) {
        if (status.m()) {
            return new com.google.android.gms.common.api.k(status);
        }
        return new com.google.android.gms.common.api.b(status);
    }
}
