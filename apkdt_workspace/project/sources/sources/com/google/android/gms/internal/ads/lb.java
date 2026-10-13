package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.telephony.TelephonyManager;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(26)
/* loaded from: classes.dex */
public class lb extends ib {
    @Override // com.google.android.gms.internal.ads.db
    public final bt1 a(Context context, TelephonyManager telephonyManager) {
        com.google.android.gms.ads.internal.n.c();
        if (wa.b(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return telephonyManager.isDataEnabled() ? bt1.ENUM_TRUE : bt1.ENUM_FALSE;
        }
        return bt1.ENUM_FALSE;
    }
}
