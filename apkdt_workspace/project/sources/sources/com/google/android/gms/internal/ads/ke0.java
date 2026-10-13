package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ke0 {

    /* renamed from: a, reason: collision with root package name */
    private final AtomicReference<zzajd> f7676a = new AtomicReference<>();

    private final zzaji b(String str, JSONObject jSONObject) {
        zzajd b2 = b();
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            try {
                if (b2.zzda(jSONObject.getString("class_name"))) {
                    return b2.zzcz("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
                }
                return b2.zzcz("com.google.ads.mediation.customevent.CustomEventAdapter");
            } catch (JSONException e2) {
                qd.b("Invalid custom event.", e2);
            }
        }
        return b2.zzcz(str);
    }

    public final void a(zzajd zzajdVar) {
        this.f7676a.compareAndSet(null, zzajdVar);
    }

    public final zzaji a(String str, JSONObject jSONObject) {
        if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
            return new zzajz(new AdMobAdapter());
        }
        if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
            return new zzajz(new AdUrlAdapter());
        }
        if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
            return new zzajz(new zzalz());
        }
        return b(str, jSONObject);
    }

    public final zzalj a(String str) {
        return b().zzdb(str);
    }

    private final zzajd b() {
        zzajd zzajdVar = this.f7676a.get();
        if (zzajdVar != null) {
            return zzajdVar;
        }
        qd.d("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    public final boolean a() {
        return this.f7676a.get() != null;
    }
}
