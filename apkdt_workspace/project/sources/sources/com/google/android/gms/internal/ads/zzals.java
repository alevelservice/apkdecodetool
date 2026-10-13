package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzals extends zzalm {

    /* renamed from: e, reason: collision with root package name */
    private final RtbAdapter f10934e;

    /* renamed from: f, reason: collision with root package name */
    private com.google.android.gms.ads.mediation.j f10935f;

    /* renamed from: g, reason: collision with root package name */
    private com.google.android.gms.ads.mediation.o f10936g;

    /* renamed from: h, reason: collision with root package name */
    private String f10937h = "";

    public zzals(RtbAdapter rtbAdapter) {
        this.f10934e = rtbAdapter;
    }

    private static Bundle a(String str) {
        String valueOf = String.valueOf(str);
        qd.d(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str == null) {
                return bundle;
            }
            JSONObject jSONObject = new JSONObject(str);
            Bundle bundle2 = new Bundle();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                bundle2.putString(next, jSONObject.getString(next));
            }
            return bundle2;
        } catch (JSONException e2) {
            qd.b("", e2);
            throw new RemoteException();
        }
    }

    private final Bundle b(zztp zztpVar) {
        Bundle bundle;
        Bundle bundle2 = zztpVar.q;
        return (bundle2 == null || (bundle = bundle2.getBundle(this.f10934e.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final zzwk getVideoController() {
        com.google.android.gms.ads.mediation.i iVar = this.f10934e;
        if (!(iVar instanceof com.google.android.gms.ads.mediation.z)) {
            return null;
        }
        try {
            return ((com.google.android.gms.ads.mediation.z) iVar).getVideoController();
        } catch (Throwable th) {
            qd.b("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zza(String str, String str2, zztp zztpVar, IObjectWrapper iObjectWrapper, zzakx zzakxVar, zzajj zzajjVar, zztw zztwVar) {
        try {
            this.f10934e.loadBannerAd(new com.google.android.gms.ads.mediation.f((Context) ObjectWrapper.unwrap(iObjectWrapper), str, a(str2), b(zztpVar), a(zztpVar), zztpVar.o, zztpVar.f11243k, zztpVar.x, a(str2, zztpVar), com.google.android.gms.ads.r.a(zztwVar.f11250i, zztwVar.f11247f, zztwVar.f11246e), this.f10937h), new p5(this, zzakxVar, zzajjVar));
        } catch (Throwable th) {
            qd.b("Adapter failed to render banner ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zza(String[] strArr, Bundle[] bundleArr) {
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zzab(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final boolean zzac(IObjectWrapper iObjectWrapper) {
        com.google.android.gms.ads.mediation.j jVar = this.f10935f;
        if (jVar == null) {
            return false;
        }
        try {
            jVar.a((Context) ObjectWrapper.unwrap(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            qd.b("", th);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final boolean zzad(IObjectWrapper iObjectWrapper) {
        com.google.android.gms.ads.mediation.o oVar = this.f10936g;
        if (oVar == null) {
            return false;
        }
        try {
            oVar.a((Context) ObjectWrapper.unwrap(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            qd.b("", th);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zzdh(String str) {
        this.f10937h = str;
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final zzalx zzsc() {
        zzalx.a(this.f10934e.getVersionInfo());
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final zzalx zzsd() {
        zzalx.a(this.f10934e.getSDKVersionInfo());
        throw null;
    }

    private static boolean a(zztp zztpVar) {
        if (zztpVar.f11242j) {
            return true;
        }
        mu1.a();
        return gd.a();
    }

    @Nullable
    private static String a(String str, zztp zztpVar) {
        String str2 = zztpVar.y;
        try {
            return new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException unused) {
            return str2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zza(String str, String str2, zztp zztpVar, IObjectWrapper iObjectWrapper, zzalc zzalcVar, zzajj zzajjVar) {
        try {
            this.f10934e.loadInterstitialAd(new com.google.android.gms.ads.mediation.k((Context) ObjectWrapper.unwrap(iObjectWrapper), str, a(str2), b(zztpVar), a(zztpVar), zztpVar.o, zztpVar.f11243k, zztpVar.x, a(str2, zztpVar), this.f10937h), new r5(this, zzalcVar, zzajjVar));
        } catch (Throwable th) {
            qd.b("Adapter failed to render interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zza(String str, String str2, zztp zztpVar, IObjectWrapper iObjectWrapper, zzali zzaliVar, zzajj zzajjVar) {
        try {
            this.f10934e.loadRewardedAd(new com.google.android.gms.ads.mediation.p((Context) ObjectWrapper.unwrap(iObjectWrapper), str, a(str2), b(zztpVar), a(zztpVar), zztpVar.o, zztpVar.f11243k, zztpVar.x, a(str2, zztpVar), this.f10937h), new q5(this, zzaliVar, zzajjVar));
        } catch (Throwable th) {
            qd.b("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zza(String str, String str2, zztp zztpVar, IObjectWrapper iObjectWrapper, zzald zzaldVar, zzajj zzajjVar) {
        try {
            this.f10934e.loadNativeAd(new com.google.android.gms.ads.mediation.m((Context) ObjectWrapper.unwrap(iObjectWrapper), str, a(str2), b(zztpVar), a(zztpVar), zztpVar.o, zztpVar.f11243k, zztpVar.x, a(str2, zztpVar), this.f10937h), new t5(this, zzaldVar, zzajjVar));
        } catch (Throwable th) {
            qd.b("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zza(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, zztw zztwVar, zzalo zzaloVar) {
        com.google.android.gms.ads.a aVar;
        try {
            s5 s5Var = new s5(this, zzaloVar);
            RtbAdapter rtbAdapter = this.f10934e;
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1396342996:
                    if (str.equals("banner")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1052618729:
                    if (str.equals("native")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -239580146:
                    if (str.equals("rewarded")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 604727084:
                    if (str.equals("interstitial")) {
                        c2 = 1;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                aVar = com.google.android.gms.ads.a.BANNER;
            } else if (c2 == 1) {
                aVar = com.google.android.gms.ads.a.INTERSTITIAL;
            } else if (c2 == 2) {
                aVar = com.google.android.gms.ads.a.REWARDED;
            } else if (c2 == 3) {
                aVar = com.google.android.gms.ads.a.NATIVE;
            } else {
                throw new IllegalArgumentException("Internal Error");
            }
            com.google.android.gms.ads.mediation.h hVar = new com.google.android.gms.ads.mediation.h(aVar, bundle2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(hVar);
            rtbAdapter.collectSignals(new com.google.android.gms.ads.mediation.rtb.a((Context) ObjectWrapper.unwrap(iObjectWrapper), arrayList, bundle, com.google.android.gms.ads.r.a(zztwVar.f11250i, zztwVar.f11247f, zztwVar.f11246e)), s5Var);
        } catch (Throwable th) {
            qd.b("Error generating signals for RTB", th);
            throw new RemoteException();
        }
    }
}
