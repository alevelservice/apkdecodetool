package com.google.android.gms.internal.common;

import androidx.annotation.NonNull;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
final class d implements c {
    private d() {
    }

    @Override // com.google.android.gms.internal.common.c
    @NonNull
    public final ScheduledExecutorService a(int i2, int i3) {
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
    }
}
