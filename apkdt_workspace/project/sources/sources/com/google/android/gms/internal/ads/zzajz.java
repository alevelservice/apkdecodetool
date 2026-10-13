package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.reward.mediation.InitializableMediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzajz extends zzajh {

    /* renamed from: e, reason: collision with root package name */
    private final Object f10922e;

    /* renamed from: f, reason: collision with root package name */
    private g5 f10923f;

    /* renamed from: g, reason: collision with root package name */
    private zzapz f10924g;

    /* renamed from: h, reason: collision with root package name */
    private IObjectWrapper f10925h;

    /* renamed from: i, reason: collision with root package name */
    private com.google.android.gms.ads.mediation.o f10926i;

    public zzajz(@NonNull com.google.android.gms.ads.mediation.e eVar) {
        this.f10922e = eVar;
    }

    private final Bundle a(String str, zztp zztpVar, String str2) {
        Bundle bundle;
        String valueOf = String.valueOf(str);
        qd.a(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
        try {
            Bundle bundle2 = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                bundle = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    bundle.putString(next, jSONObject.getString(next));
                }
            } else {
                bundle = bundle2;
            }
            if (this.f10922e instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zztpVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zztpVar.f11243k);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            qd.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void destroy() {
        Object obj = this.f10922e;
        if (obj instanceof com.google.android.gms.ads.mediation.e) {
            try {
                ((com.google.android.gms.ads.mediation.e) obj).onDestroy();
            } catch (Throwable th) {
                qd.b("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final Bundle getInterstitialAdapterInfo() {
        Object obj = this.f10922e;
        if (!(obj instanceof zzbdp)) {
            String canonicalName = zzbdp.class.getCanonicalName();
            String canonicalName2 = this.f10922e.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            qd.d(sb.toString());
            return new Bundle();
        }
        return ((zzbdp) obj).getInterstitialAdapterInfo();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final zzwk getVideoController() {
        Object obj = this.f10922e;
        if (!(obj instanceof com.google.android.gms.ads.mediation.z)) {
            return null;
        }
        try {
            return ((com.google.android.gms.ads.mediation.z) obj).getVideoController();
        } catch (Throwable th) {
            qd.b("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final boolean isInitialized() {
        Object obj = this.f10922e;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            qd.a("Check if adapter is initialized.");
            try {
                return ((MediationRewardedVideoAdAdapter) this.f10922e).isInitialized();
            } catch (Throwable th) {
                qd.b("", th);
                throw new RemoteException();
            }
        }
        if (obj instanceof com.google.android.gms.ads.mediation.a) {
            return this.f10924g != null;
        }
        String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
        String canonicalName2 = com.google.android.gms.ads.mediation.a.class.getCanonicalName();
        String canonicalName3 = this.f10922e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
        sb.append(canonicalName);
        sb.append(" or ");
        sb.append(canonicalName2);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName3);
        qd.d(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void pause() {
        Object obj = this.f10922e;
        if (obj instanceof com.google.android.gms.ads.mediation.e) {
            try {
                ((com.google.android.gms.ads.mediation.e) obj).onPause();
            } catch (Throwable th) {
                qd.b("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void resume() {
        Object obj = this.f10922e;
        if (obj instanceof com.google.android.gms.ads.mediation.e) {
            try {
                ((com.google.android.gms.ads.mediation.e) obj).onResume();
            } catch (Throwable th) {
                qd.b("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void setImmersiveMode(boolean z) {
        Object obj = this.f10922e;
        if (!(obj instanceof com.google.android.gms.ads.mediation.w)) {
            String canonicalName = com.google.android.gms.ads.mediation.w.class.getCanonicalName();
            String canonicalName2 = this.f10922e.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            qd.d(sb.toString());
            return;
        }
        try {
            ((com.google.android.gms.ads.mediation.w) obj).onImmersiveModeUpdated(z);
        } catch (Throwable th) {
            qd.b("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void showInterstitial() {
        if (this.f10922e instanceof MediationInterstitialAdapter) {
            qd.a("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.f10922e).showInterstitial();
                return;
            } catch (Throwable th) {
                qd.b("", th);
                throw new RemoteException();
            }
        }
        String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
        String canonicalName2 = this.f10922e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        qd.d(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void showVideo() {
        Object obj = this.f10922e;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            qd.a("Show rewarded video ad from adapter.");
            try {
                ((MediationRewardedVideoAdAdapter) this.f10922e).showVideo();
                return;
            } catch (Throwable th) {
                qd.b("", th);
                throw new RemoteException();
            }
        }
        if (obj instanceof com.google.android.gms.ads.mediation.a) {
            com.google.android.gms.ads.mediation.o oVar = this.f10926i;
            if (oVar != null) {
                oVar.a((Context) ObjectWrapper.unwrap(this.f10925h));
                return;
            } else {
                qd.b("Can not show null mediated rewarded ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
        String canonicalName2 = com.google.android.gms.ads.mediation.a.class.getCanonicalName();
        String canonicalName3 = this.f10922e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
        sb.append(canonicalName);
        sb.append(" or ");
        sb.append(canonicalName2);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName3);
        qd.d(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztw zztwVar, zztp zztpVar, String str, zzajj zzajjVar) {
        zza(iObjectWrapper, zztwVar, zztpVar, str, null, zzajjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zzb(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, zzajj zzajjVar) {
        Bundle bundle;
        if (this.f10922e instanceof com.google.android.gms.ads.mediation.a) {
            qd.a("Requesting rewarded ad from adapter.");
            try {
                com.google.android.gms.ads.mediation.a aVar = (com.google.android.gms.ads.mediation.a) this.f10922e;
                f5 f5Var = new f5(this, zzajjVar, aVar);
                Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
                Bundle a2 = a(str, zztpVar, null);
                if (zztpVar.q == null || (bundle = zztpVar.q.getBundle(this.f10922e.getClass().getName())) == null) {
                    bundle = new Bundle();
                }
                aVar.loadRewardedAd(new com.google.android.gms.ads.mediation.p(context, "", a2, bundle, a(zztpVar), zztpVar.o, zztpVar.f11243k, zztpVar.x, a(str, zztpVar), ""), f5Var);
                return;
            } catch (Exception e2) {
                qd.b("", e2);
                throw new RemoteException();
            }
        }
        String canonicalName = com.google.android.gms.ads.mediation.a.class.getCanonicalName();
        String canonicalName2 = this.f10922e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        qd.d(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final IObjectWrapper zzrk() {
        Object obj = this.f10922e;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return ObjectWrapper.wrap(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                qd.b("", th);
                throw new RemoteException();
            }
        }
        String canonicalName = MediationBannerAdapter.class.getCanonicalName();
        String canonicalName2 = this.f10922e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        qd.d(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final zzajq zzrl() {
        com.google.android.gms.ads.mediation.q a2 = this.f10923f.a();
        if (a2 instanceof com.google.android.gms.ads.mediation.r) {
            return new zzakg((com.google.android.gms.ads.mediation.r) a2);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final zzajr zzrm() {
        com.google.android.gms.ads.mediation.q a2 = this.f10923f.a();
        if (a2 instanceof com.google.android.gms.ads.mediation.s) {
            return new zzakf((com.google.android.gms.ads.mediation.s) a2);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final Bundle zzrn() {
        Object obj = this.f10922e;
        if (!(obj instanceof zzbdq)) {
            String canonicalName = zzbdq.class.getCanonicalName();
            String canonicalName2 = this.f10922e.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            qd.d(sb.toString());
            return new Bundle();
        }
        return ((zzbdq) obj).zzrn();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final Bundle zzro() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final boolean zzrp() {
        return this.f10922e instanceof InitializableMediationRewardedVideoAdAdapter;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final zzabo zzrq() {
        com.google.android.gms.ads.formats.e c2 = this.f10923f.c();
        if (c2 instanceof n) {
            return ((n) c2).a();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final zzajw zzrr() {
        com.google.android.gms.ads.mediation.x b2 = this.f10923f.b();
        if (b2 != null) {
            return new zzaky(b2);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zzv(IObjectWrapper iObjectWrapper) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        Object obj = this.f10922e;
        if (obj instanceof com.google.android.gms.ads.mediation.v) {
            ((com.google.android.gms.ads.mediation.v) obj).a(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zzw(IObjectWrapper iObjectWrapper) {
        if (this.f10922e instanceof com.google.android.gms.ads.mediation.a) {
            qd.a("Show rewarded ad from adapter.");
            com.google.android.gms.ads.mediation.o oVar = this.f10926i;
            if (oVar != null) {
                oVar.a((Context) ObjectWrapper.unwrap(iObjectWrapper));
                return;
            } else {
                qd.b("Can not show null mediation rewarded ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = com.google.android.gms.ads.mediation.a.class.getCanonicalName();
        String canonicalName2 = this.f10922e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        qd.d(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztw zztwVar, zztp zztpVar, String str, String str2, zzajj zzajjVar) {
        if (this.f10922e instanceof MediationBannerAdapter) {
            qd.a("Requesting banner ad from adapter.");
            try {
                MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.f10922e;
                mediationBannerAdapter.requestBannerAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new g5(zzajjVar), a(str, zztpVar, str2), com.google.android.gms.ads.r.a(zztwVar.f11250i, zztwVar.f11247f, zztwVar.f11246e), new d5(zztpVar.f11238f == -1 ? null : new Date(zztpVar.f11238f), zztpVar.f11240h, zztpVar.f11241i != null ? new HashSet(zztpVar.f11241i) : null, zztpVar.o, a(zztpVar), zztpVar.f11243k, zztpVar.v, zztpVar.x, a(str, zztpVar)), zztpVar.q != null ? zztpVar.q.getBundle(mediationBannerAdapter.getClass().getName()) : null);
                return;
            } catch (Throwable th) {
                qd.b("", th);
                throw new RemoteException();
            }
        }
        String canonicalName = MediationBannerAdapter.class.getCanonicalName();
        String canonicalName2 = this.f10922e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        qd.d(sb.toString());
        throw new RemoteException();
    }

    public zzajz(@NonNull com.google.android.gms.ads.mediation.a aVar) {
        this.f10922e = aVar;
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

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, zzajj zzajjVar) {
        zza(iObjectWrapper, zztpVar, str, (String) null, zzajjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, String str2, zzajj zzajjVar) {
        if (this.f10922e instanceof MediationInterstitialAdapter) {
            qd.a("Requesting interstitial ad from adapter.");
            try {
                MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) this.f10922e;
                mediationInterstitialAdapter.requestInterstitialAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new g5(zzajjVar), a(str, zztpVar, str2), new d5(zztpVar.f11238f == -1 ? null : new Date(zztpVar.f11238f), zztpVar.f11240h, zztpVar.f11241i != null ? new HashSet(zztpVar.f11241i) : null, zztpVar.o, a(zztpVar), zztpVar.f11243k, zztpVar.v, zztpVar.x, a(str, zztpVar)), zztpVar.q != null ? zztpVar.q.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
                return;
            } catch (Throwable th) {
                qd.b("", th);
                throw new RemoteException();
            }
        }
        String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
        String canonicalName2 = this.f10922e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        qd.d(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, String str2, zzajj zzajjVar, zzaai zzaaiVar, List<String> list) {
        Object obj = this.f10922e;
        if (obj instanceof MediationNativeAdapter) {
            try {
                MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj;
                h5 h5Var = new h5(zztpVar.f11238f == -1 ? null : new Date(zztpVar.f11238f), zztpVar.f11240h, zztpVar.f11241i != null ? new HashSet(zztpVar.f11241i) : null, zztpVar.o, a(zztpVar), zztpVar.f11243k, zzaaiVar, list, zztpVar.v, zztpVar.x, a(str, zztpVar));
                Bundle bundle = zztpVar.q != null ? zztpVar.q.getBundle(mediationNativeAdapter.getClass().getName()) : null;
                this.f10923f = new g5(zzajjVar);
                mediationNativeAdapter.requestNativeAd((Context) ObjectWrapper.unwrap(iObjectWrapper), this.f10923f, a(str, zztpVar, str2), h5Var, bundle);
                return;
            } catch (Throwable th) {
                qd.b("", th);
                throw new RemoteException();
            }
        }
        String canonicalName = MediationNativeAdapter.class.getCanonicalName();
        String canonicalName2 = this.f10922e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        qd.d(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, zzapz zzapzVar, String str2) {
        d5 d5Var;
        Bundle bundle;
        Object obj = this.f10922e;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            qd.a("Initialize rewarded video adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.f10922e;
                Bundle a2 = a(str2, zztpVar, null);
                if (zztpVar != null) {
                    d5 d5Var2 = new d5(zztpVar.f11238f == -1 ? null : new Date(zztpVar.f11238f), zztpVar.f11240h, zztpVar.f11241i != null ? new HashSet(zztpVar.f11241i) : null, zztpVar.o, a(zztpVar), zztpVar.f11243k, zztpVar.v, zztpVar.x, a(str2, zztpVar));
                    bundle = zztpVar.q != null ? zztpVar.q.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null;
                    d5Var = d5Var2;
                } else {
                    d5Var = null;
                    bundle = null;
                }
                mediationRewardedVideoAdAdapter.initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), d5Var, str, new e8(zzapzVar), a2, bundle);
                return;
            } catch (Throwable th) {
                qd.b("", th);
                throw new RemoteException();
            }
        }
        if (obj instanceof com.google.android.gms.ads.mediation.a) {
            this.f10925h = iObjectWrapper;
            this.f10924g = zzapzVar;
            zzapzVar.zzai(ObjectWrapper.wrap(obj));
            return;
        }
        String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
        String canonicalName2 = com.google.android.gms.ads.mediation.a.class.getCanonicalName();
        String canonicalName3 = this.f10922e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
        sb.append(canonicalName);
        sb.append(" or ");
        sb.append(canonicalName2);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName3);
        qd.d(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zzapz zzapzVar, List<String> list) {
        if (this.f10922e instanceof InitializableMediationRewardedVideoAdAdapter) {
            qd.a("Initialize rewarded video adapter.");
            try {
                InitializableMediationRewardedVideoAdAdapter initializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter) this.f10922e;
                ArrayList arrayList = new ArrayList();
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(a(it.next(), null, null));
                }
                initializableMediationRewardedVideoAdAdapter.initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), new e8(zzapzVar), arrayList);
                return;
            } catch (Throwable th) {
                qd.c("Could not initialize rewarded video adapter.", th);
                throw new RemoteException();
            }
        }
        String canonicalName = InitializableMediationRewardedVideoAdAdapter.class.getCanonicalName();
        String canonicalName2 = this.f10922e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        qd.d(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(zztp zztpVar, String str) {
        zza(zztpVar, str, (String) null);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(zztp zztpVar, String str, String str2) {
        Object obj = this.f10922e;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            qd.a("Requesting rewarded video ad from adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.f10922e;
                mediationRewardedVideoAdAdapter.loadAd(new d5(zztpVar.f11238f == -1 ? null : new Date(zztpVar.f11238f), zztpVar.f11240h, zztpVar.f11241i != null ? new HashSet(zztpVar.f11241i) : null, zztpVar.o, a(zztpVar), zztpVar.f11243k, zztpVar.v, zztpVar.x, a(str, zztpVar)), a(str, zztpVar, str2), zztpVar.q != null ? zztpVar.q.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null);
                return;
            } catch (Throwable th) {
                qd.b("", th);
                throw new RemoteException();
            }
        }
        if (obj instanceof com.google.android.gms.ads.mediation.a) {
            zzb(this.f10925h, zztpVar, str, new zzakd((com.google.android.gms.ads.mediation.a) obj, this.f10924g));
            return;
        }
        String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
        String canonicalName2 = com.google.android.gms.ads.mediation.a.class.getCanonicalName();
        String canonicalName3 = this.f10922e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
        sb.append(canonicalName);
        sb.append(" or ");
        sb.append(canonicalName2);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName3);
        qd.d(sb.toString());
        throw new RemoteException();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006e  */
    @Override // com.google.android.gms.internal.ads.zzaji
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.dynamic.IObjectWrapper r10, com.google.android.gms.internal.ads.zzaez r11, java.util.List<com.google.android.gms.internal.ads.zzafh> r12) {
        /*
            r9 = this;
            java.lang.Object r0 = r9.f10922e
            boolean r0 = r0 instanceof com.google.android.gms.ads.mediation.a
            if (r0 == 0) goto L87
            com.google.android.gms.internal.ads.e5 r0 = new com.google.android.gms.internal.ads.e5
            r0.<init>(r9, r11)
            java.util.ArrayList r11 = new java.util.ArrayList
            r11.<init>()
            java.util.Iterator r12 = r12.iterator()
        L14:
            boolean r1 = r12.hasNext()
            if (r1 == 0) goto L79
            java.lang.Object r1 = r12.next()
            com.google.android.gms.internal.ads.zzafh r1 = (com.google.android.gms.internal.ads.zzafh) r1
            com.google.android.gms.ads.mediation.h r2 = new com.google.android.gms.ads.mediation.h
            java.lang.String r3 = r1.f10915e
            r4 = -1
            int r5 = r3.hashCode()
            r6 = 3
            r7 = 2
            r8 = 1
            switch(r5) {
                case -1396342996: goto L4e;
                case -1052618729: goto L44;
                case -239580146: goto L3a;
                case 604727084: goto L30;
                default: goto L2f;
            }
        L2f:
            goto L57
        L30:
            java.lang.String r5 = "interstitial"
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L57
            r4 = 1
            goto L57
        L3a:
            java.lang.String r5 = "rewarded"
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L57
            r4 = 2
            goto L57
        L44:
            java.lang.String r5 = "native"
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L57
            r4 = 3
            goto L57
        L4e:
            java.lang.String r5 = "banner"
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L57
            r4 = 0
        L57:
            if (r4 == 0) goto L6e
            if (r4 == r8) goto L6b
            if (r4 == r7) goto L68
            if (r4 != r6) goto L62
            com.google.android.gms.ads.a r3 = com.google.android.gms.ads.a.NATIVE
            goto L70
        L62:
            android.os.RemoteException r10 = new android.os.RemoteException
            r10.<init>()
            throw r10
        L68:
            com.google.android.gms.ads.a r3 = com.google.android.gms.ads.a.REWARDED
            goto L70
        L6b:
            com.google.android.gms.ads.a r3 = com.google.android.gms.ads.a.INTERSTITIAL
            goto L70
        L6e:
            com.google.android.gms.ads.a r3 = com.google.android.gms.ads.a.BANNER
        L70:
            android.os.Bundle r1 = r1.f10916f
            r2.<init>(r3, r1)
            r11.add(r2)
            goto L14
        L79:
            java.lang.Object r12 = r9.f10922e
            com.google.android.gms.ads.mediation.a r12 = (com.google.android.gms.ads.mediation.a) r12
            java.lang.Object r10 = com.google.android.gms.dynamic.ObjectWrapper.unwrap(r10)
            android.content.Context r10 = (android.content.Context) r10
            r12.initialize(r10, r0, r11)
            return
        L87:
            android.os.RemoteException r10 = new android.os.RemoteException
            r10.<init>()
            goto L8e
        L8d:
            throw r10
        L8e:
            goto L8d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzajz.zza(com.google.android.gms.dynamic.IObjectWrapper, com.google.android.gms.internal.ads.zzaez, java.util.List):void");
    }
}
