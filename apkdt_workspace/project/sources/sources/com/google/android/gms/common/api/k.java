package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public class k extends b {
    public k(@NonNull Status status) {
        super(status);
    }

    public PendingIntent getResolution() {
        return this.mStatus.j();
    }

    public void startResolutionForResult(Activity activity, int i2) {
        this.mStatus.a(activity, i2);
    }
}
