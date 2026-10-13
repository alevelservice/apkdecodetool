package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class j0 implements o0<Object> {
    @Override // com.google.android.gms.internal.ads.o0
    public final void a(Object obj, Map<String, String> map) {
        String valueOf = String.valueOf(map.get("string"));
        qd.c(valueOf.length() != 0 ? "Received log message: ".concat(valueOf) : new String("Received log message: "));
    }
}
