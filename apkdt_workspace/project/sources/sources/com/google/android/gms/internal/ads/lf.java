package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import androidx.annotation.Nullable;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lf extends df {
    @Override // com.google.android.gms.internal.ads.df
    @Nullable
    public final zzaya a(Context context, tf tfVar, int i2, boolean z, pw1 pw1Var, qf qfVar) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (!(com.google.android.gms.common.util.o.a() && (applicationInfo == null || applicationInfo.targetSdkVersion >= 11))) {
            return null;
        }
        sf sfVar = new sf(context, tfVar.zzxp(), tfVar.zzxn(), pw1Var, tfVar.zzxk());
        if ((Build.VERSION.SDK_INT >= 16 && i2 == 2) && Arrays.asList(qfVar.f8884e.split(",")).contains("3")) {
            return new zzayw(context, sfVar, tfVar, z, df.a(tfVar), qfVar);
        }
        return new zzaxr(context, z, df.a(tfVar), qfVar, new sf(context, tfVar.zzxp(), tfVar.zzxn(), pw1Var, tfVar.zzxk()));
    }
}
