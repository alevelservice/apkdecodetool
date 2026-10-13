package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class m0 implements o0<fi> {
    @Override // com.google.android.gms.internal.ads.o0
    public final /* synthetic */ void a(fi fiVar, Map map) {
        fi fiVar2 = fiVar;
        if (map.keySet().contains("start")) {
            fiVar2.zzas(true);
        }
        if (map.keySet().contains("stop")) {
            fiVar2.zzas(false);
        }
    }
}
