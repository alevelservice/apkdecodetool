package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cf0 implements ed0<zzaji, zzcgu> {

    /* renamed from: a, reason: collision with root package name */
    private final ke0 f5991a;

    public cf0(ke0 ke0Var) {
        this.f5991a = ke0Var;
    }

    @Override // com.google.android.gms.internal.ads.ed0
    public final bd0<zzaji, zzcgu> a(String str, JSONObject jSONObject) {
        zzaji a2 = this.f5991a.a(str, jSONObject);
        if (a2 == null) {
            return null;
        }
        return new bd0<>(a2, new zzcgu(), str);
    }
}
