package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class u0 implements o0<fi> {

    /* renamed from: d, reason: collision with root package name */
    private static final Map<String, Integer> f9659d = com.google.android.gms.common.util.f.a(new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});

    /* renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.a f9660a;

    /* renamed from: b, reason: collision with root package name */
    private final a6 f9661b;

    /* renamed from: c, reason: collision with root package name */
    private final n6 f9662c;

    public u0(com.google.android.gms.ads.internal.a aVar, a6 a6Var, n6 n6Var) {
        this.f9660a = aVar;
        this.f9661b = a6Var;
        this.f9662c = n6Var;
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final /* synthetic */ void a(fi fiVar, Map map) {
        com.google.android.gms.ads.internal.a aVar;
        fi fiVar2 = fiVar;
        int intValue = f9659d.get((String) map.get("a")).intValue();
        if (intValue != 5 && intValue != 7 && (aVar = this.f9660a) != null && !aVar.b()) {
            this.f9660a.a(null);
            return;
        }
        if (intValue == 1) {
            this.f9661b.a((Map<String, String>) map);
            return;
        }
        if (intValue == 3) {
            new f6(fiVar2, map).a();
            return;
        }
        if (intValue == 4) {
            new z5(fiVar2, map).b();
            return;
        }
        if (intValue == 5) {
            new c6(fiVar2, map).a();
            return;
        }
        if (intValue == 6) {
            this.f9661b.a(true);
        } else if (intValue != 7) {
            qd.c("Unknown MRAID command called.");
        } else {
            this.f9662c.a();
        }
    }
}
