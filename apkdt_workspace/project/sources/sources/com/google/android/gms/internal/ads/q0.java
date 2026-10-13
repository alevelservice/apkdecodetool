package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class q0 implements o0<Object> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f8824a;

    public q0(Context context) {
        this.f8824a = context;
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final void a(Object obj, Map<String, String> map) {
        if (com.google.android.gms.ads.internal.n.A().a(this.f8824a)) {
            String str = map.get("eventName");
            String str2 = map.get("eventId");
            char c2 = 65535;
            int hashCode = str.hashCode();
            if (hashCode != 94399) {
                if (hashCode != 94401) {
                    if (hashCode == 94407 && str.equals("_ai")) {
                        c2 = 1;
                    }
                } else if (str.equals("_ac")) {
                    c2 = 0;
                }
            } else if (str.equals("_aa")) {
                c2 = 2;
            }
            if (c2 == 0) {
                com.google.android.gms.ads.internal.n.A().d(this.f8824a, str2);
                return;
            }
            if (c2 == 1) {
                com.google.android.gms.ads.internal.n.A().e(this.f8824a, str2);
            } else if (c2 != 2) {
                qd.b("logScionEvent gmsg contained unsupported eventName");
            } else {
                com.google.android.gms.ads.internal.n.A().g(this.f8824a, str2);
            }
        }
    }
}
