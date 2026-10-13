package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(19)
/* loaded from: classes.dex */
public class gb extends hb {
    @Override // com.google.android.gms.internal.ads.hb, com.google.android.gms.internal.ads.db
    public final boolean a(View view) {
        return view.isAttachedToWindow();
    }

    @Override // com.google.android.gms.internal.ads.db
    public final ViewGroup.LayoutParams b() {
        return new ViewGroup.LayoutParams(-1, -1);
    }
}
