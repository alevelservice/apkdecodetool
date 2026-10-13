package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.gz0;
import com.google.android.gms.internal.ads.qy0;
import com.google.android.gms.internal.ads.qz0;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements qy0 {

    /* renamed from: a, reason: collision with root package name */
    static final qy0 f4522a = new d();

    private d() {
    }

    @Override // com.google.android.gms.internal.ads.qy0
    public final qz0 b(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean("isSuccessful", false)) {
            n.g().i().d(jSONObject.getString("appSettingsJson"));
        }
        return gz0.a((Object) null);
    }
}
