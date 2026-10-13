package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class w implements o0<Object> {

    /* renamed from: a, reason: collision with root package name */
    private final z f10008a;

    public w(z zVar) {
        this.f10008a = zVar;
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final void a(Object obj, Map<String, String> map) {
        String str = map.get("name");
        if (str == null) {
            qd.d("App event with no name parameter.");
        } else {
            this.f10008a.onAppEvent(str, map.get("info"));
        }
    }
}
