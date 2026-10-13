package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gh0 implements ed0<zzalj, zzcgu> {

    /* renamed from: a, reason: collision with root package name */
    private final hi0 f6874a;

    public gh0(hi0 hi0Var) {
        this.f6874a = hi0Var;
    }

    @Override // com.google.android.gms.internal.ads.ed0
    public final bd0<zzalj, zzcgu> a(String str, JSONObject jSONObject) {
        zzalj b2 = this.f6874a.b(str);
        if (b2 == null) {
            return null;
        }
        return new bd0<>(b2, new zzcgu(), str);
    }
}
