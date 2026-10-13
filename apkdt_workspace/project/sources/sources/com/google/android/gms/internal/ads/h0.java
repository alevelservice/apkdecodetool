package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zze;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class h0 implements o0<fi> {
    @Override // com.google.android.gms.internal.ads.o0
    public final /* synthetic */ void a(fi fiVar, Map map) {
        fi fiVar2 = fiVar;
        if (fiVar2.zzzm() != null) {
            fiVar2.zzzm().zzmd();
        }
        zze zzyu = fiVar2.zzyu();
        if (zzyu != null) {
            zzyu.close();
            return;
        }
        zze zzyv = fiVar2.zzyv();
        if (zzyv != null) {
            zzyv.close();
        } else {
            qd.d("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
