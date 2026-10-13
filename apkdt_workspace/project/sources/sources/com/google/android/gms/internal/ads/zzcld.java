package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzcld extends zzaln {

    /* renamed from: e, reason: collision with root package name */
    private final String f11122e;

    /* renamed from: f, reason: collision with root package name */
    private final zzalj f11123f;

    /* renamed from: g, reason: collision with root package name */
    private he<JSONObject> f11124g;

    /* renamed from: h, reason: collision with root package name */
    private final JSONObject f11125h = new JSONObject();

    /* renamed from: i, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f11126i = false;

    public zzcld(String str, zzalj zzaljVar, he<JSONObject> heVar) {
        this.f11124g = heVar;
        this.f11122e = str;
        this.f11123f = zzaljVar;
        try {
            this.f11125h.put("adapter_version", this.f11123f.zzsc().toString());
            this.f11125h.put("sdk_version", this.f11123f.zzsd().toString());
            this.f11125h.put("name", this.f11122e);
        } catch (RemoteException | NullPointerException | JSONException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalo
    public final synchronized void onFailure(String str) {
        if (this.f11126i) {
            return;
        }
        try {
            this.f11125h.put("signal_error", str);
        } catch (JSONException unused) {
        }
        this.f11124g.b(this.f11125h);
        this.f11126i = true;
    }

    @Override // com.google.android.gms.internal.ads.zzalo
    public final synchronized void zzdi(String str) {
        if (this.f11126i) {
            return;
        }
        if (str == null) {
            onFailure("Adapter returned null signals");
            return;
        }
        try {
            this.f11125h.put("signals", str);
        } catch (JSONException unused) {
        }
        this.f11124g.b(this.f11125h);
        this.f11126i = true;
    }
}
