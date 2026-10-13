package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class at0 {
    public static ms0 a(List<ms0> list, ms0 ms0Var) {
        return list.get(0);
    }

    public static zztw a(Context context, List<ms0> list) {
        ArrayList arrayList = new ArrayList();
        for (ms0 ms0Var : list) {
            if (ms0Var.f8221c) {
                arrayList.add(com.google.android.gms.ads.d.f4477l);
            } else {
                arrayList.add(new com.google.android.gms.ads.d(ms0Var.f8219a, ms0Var.f8220b));
            }
        }
        return new zztw(context, (com.google.android.gms.ads.d[]) arrayList.toArray(new com.google.android.gms.ads.d[arrayList.size()]));
    }

    public static ms0 a(zztw zztwVar) {
        if (zztwVar.m) {
            return new ms0(-3, 0, true);
        }
        return new ms0(zztwVar.f11250i, zztwVar.f11247f, false);
    }
}
