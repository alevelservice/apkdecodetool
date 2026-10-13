package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class og0 implements ed0<zzaji, zzcgt> {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private final Map<String, bd0<zzaji, zzcgt>> f8523a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private final ke0 f8524b;

    public og0(ke0 ke0Var) {
        this.f8524b = ke0Var;
    }

    @Override // com.google.android.gms.internal.ads.ed0
    public final bd0<zzaji, zzcgt> a(String str, JSONObject jSONObject) {
        synchronized (this) {
            bd0<zzaji, zzcgt> bd0Var = this.f8523a.get(str);
            if (bd0Var == null) {
                zzaji a2 = this.f8524b.a(str, jSONObject);
                if (a2 == null) {
                    return null;
                }
                bd0Var = new bd0<>(a2, new zzcgt(), str);
                this.f8523a.put(str, bd0Var);
            }
            return bd0Var;
        }
    }
}
