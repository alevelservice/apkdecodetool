package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.os.Environment;
import android.os.StatFs;
import android.view.View;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(18)
/* loaded from: classes.dex */
public class hb extends eb {
    @Override // com.google.android.gms.internal.ads.db
    public final int a() {
        return 14;
    }

    @Override // com.google.android.gms.internal.ads.db
    public boolean a(View view) {
        return super.a(view) || view.getWindowId() != null;
    }

    @Override // com.google.android.gms.internal.ads.db
    public final long d() {
        if (((Boolean) mu1.e().a(aw1.K1)).booleanValue()) {
            return new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / 1024;
        }
        return -1L;
    }
}
