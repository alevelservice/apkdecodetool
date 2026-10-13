package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class k0 implements o0<fi> {
    @Override // com.google.android.gms.internal.ads.o0
    public final /* synthetic */ void a(fi fiVar, Map map) {
        fi fiVar2 = fiVar;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            fiVar2.zzju();
        } else if ("resume".equals(str)) {
            fiVar2.zzjv();
        }
    }
}
