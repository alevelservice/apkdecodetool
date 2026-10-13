package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.internal.ads.st1;
import com.google.android.gms.internal.ads.wa;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class j {
    public static void a(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        if (adOverlayInfoParcel.o == 4 && adOverlayInfoParcel.f4552g == null) {
            st1 st1Var = adOverlayInfoParcel.f4551f;
            if (st1Var != null) {
                st1Var.onAdClicked();
            }
            com.google.android.gms.ads.internal.n.a();
            a.a(context, adOverlayInfoParcel.f4550e, adOverlayInfoParcel.m);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, AdActivity.CLASS_NAME);
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.q.f11003h);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        AdOverlayInfoParcel.a(intent, adOverlayInfoParcel);
        if (!com.google.android.gms.common.util.o.h()) {
            intent.addFlags(524288);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        com.google.android.gms.ads.internal.n.c();
        wa.a(context, intent);
    }
}
