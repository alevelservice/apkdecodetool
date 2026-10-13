package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public interface j {
    @KeepForSdk
    Activity a();

    @KeepForSdk
    <T extends LifecycleCallback> T a(String str, Class<T> cls);

    @KeepForSdk
    void a(String str, @NonNull LifecycleCallback lifecycleCallback);

    @KeepForSdk
    void startActivityForResult(Intent intent, int i2);
}
