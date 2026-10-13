package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.internal.ads.na;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzt extends zze {
    public zzt(Activity activity) {
        super(activity);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zze, com.google.android.gms.internal.ads.zzamu
    public final void onCreate(Bundle bundle) {
        na.e("AdOverlayParcel is null or does not contain valid overlay type.");
        this.zzdgx = 3;
        this.zzzr.finish();
    }
}
