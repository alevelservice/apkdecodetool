package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class la {
    public static void a(Context context) {
        if (kd.a(context) && !kd.c()) {
            qz0<?> b2 = new oa(context).b();
            qd.c("Updating ad debug logging enablement.");
            de.a(b2, "AdDebugLogUpdater.updateEnablement");
        }
    }
}
