package com.google.android.gms.internal.ads;

import android.os.Build;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yg implements rh {
    @Override // com.google.android.gms.internal.ads.rh
    public final jh a(tf tfVar, int i2, String str, qf qfVar) {
        if (Build.VERSION.SDK_INT >= 16 && i2 > 0 && Arrays.asList(qfVar.f8884e.split(",")).contains("3")) {
            int g2 = mg.g();
            if (g2 < qfVar.f8887h) {
                return new uh(tfVar, qfVar);
            }
            if (g2 < qfVar.f8881b) {
                return new vh(tfVar, qfVar);
            }
            return new th(tfVar);
        }
        return new qh(tfVar);
    }
}
