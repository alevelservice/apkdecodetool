package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.e;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzakh<NETWORK_EXTRAS extends com.google.ads.mediation.e, SERVER_PARAMETERS extends MediationServerParameters> extends zzajh {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.ads.mediation.b<NETWORK_EXTRAS, SERVER_PARAMETERS> f10931e;

    /* renamed from: f, reason: collision with root package name */
    private final NETWORK_EXTRAS f10932f;

    public zzakh(com.google.ads.mediation.b<NETWORK_EXTRAS, SERVER_PARAMETERS> bVar, NETWORK_EXTRAS network_extras) {
        this.f10931e = bVar;
        this.f10932f = network_extras;
    }

    private final SERVER_PARAMETERS a(String str) {
        HashMap hashMap;
        try {
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                hashMap = new HashMap(jSONObject.length());
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.getString(next));
                }
            } else {
                hashMap = new HashMap(0);
            }
            Class<SERVER_PARAMETERS> serverParametersType = this.f10931e.getServerParametersType();
            if (serverParametersType == null) {
                return null;
            }
            SERVER_PARAMETERS newInstance = serverParametersType.newInstance();
            newInstance.a(hashMap);
            return newInstance;
        } catch (Throwable th) {
            qd.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void destroy() {
        try {
            this.f10931e.destroy();
        } catch (Throwable th) {
            qd.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final Bundle getInterstitialAdapterInfo() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final zzwk getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final boolean isInitialized() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void pause() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void resume() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void showInterstitial() {
        com.google.ads.mediation.b<NETWORK_EXTRAS, SERVER_PARAMETERS> bVar = this.f10931e;
        if (!(bVar instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(bVar.getClass().getCanonicalName());
            qd.d(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        qd.a("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f10931e).showInterstitial();
        } catch (Throwable th) {
            qd.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void showVideo() {
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zzaez zzaezVar, List<zzafh> list) {
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zzapz zzapzVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, zzapz zzapzVar, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, String str2, zzajj zzajjVar, zzaai zzaaiVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztw zztwVar, zztp zztpVar, String str, zzajj zzajjVar) {
        zza(iObjectWrapper, zztwVar, zztpVar, str, null, zzajjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(zztp zztpVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(zztp zztpVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zzb(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, zzajj zzajjVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final IObjectWrapper zzrk() {
        com.google.ads.mediation.b<NETWORK_EXTRAS, SERVER_PARAMETERS> bVar = this.f10931e;
        if (!(bVar instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(bVar.getClass().getCanonicalName());
            qd.d(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return ObjectWrapper.wrap(((MediationBannerAdapter) bVar).getBannerView());
        } catch (Throwable th) {
            qd.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final zzajq zzrl() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final zzajr zzrm() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final Bundle zzrn() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final Bundle zzro() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final boolean zzrp() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final zzabo zzrq() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final zzajw zzrr() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zzv(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zzw(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztw zztwVar, zztp zztpVar, String str, String str2, zzajj zzajjVar) {
        e.i.a.c cVar;
        com.google.ads.mediation.b<NETWORK_EXTRAS, SERVER_PARAMETERS> bVar = this.f10931e;
        if (!(bVar instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(bVar.getClass().getCanonicalName());
            qd.d(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        qd.a("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.f10931e;
            i5 i5Var = new i5(zzajjVar);
            Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
            SERVER_PARAMETERS a2 = a(str);
            int i2 = 0;
            e.i.a.c[] cVarArr = {e.i.a.c.f17646b, e.i.a.c.f17647c, e.i.a.c.f17648d, e.i.a.c.f17649e, e.i.a.c.f17650f, e.i.a.c.f17651g};
            while (true) {
                if (i2 < 6) {
                    if (cVarArr[i2].b() == zztwVar.f11250i && cVarArr[i2].a() == zztwVar.f11247f) {
                        cVar = cVarArr[i2];
                        break;
                    }
                    i2++;
                } else {
                    cVar = new e.i.a.c(com.google.android.gms.ads.r.a(zztwVar.f11250i, zztwVar.f11247f, zztwVar.f11246e));
                    break;
                }
            }
            mediationBannerAdapter.requestBannerAd(i5Var, activity, a2, cVar, m5.a(zztpVar, a(zztpVar)), this.f10932f);
        } catch (Throwable th) {
            qd.b("", th);
            throw new RemoteException();
        }
    }

    private static boolean a(zztp zztpVar) {
        if (zztpVar.f11242j) {
            return true;
        }
        mu1.a();
        return gd.a();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, zzajj zzajjVar) {
        zza(iObjectWrapper, zztpVar, str, (String) null, zzajjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, String str2, zzajj zzajjVar) {
        com.google.ads.mediation.b<NETWORK_EXTRAS, SERVER_PARAMETERS> bVar = this.f10931e;
        if (!(bVar instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(bVar.getClass().getCanonicalName());
            qd.d(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        qd.a("Requesting interstitial ad from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f10931e).requestInterstitialAd(new i5(zzajjVar), (Activity) ObjectWrapper.unwrap(iObjectWrapper), a(str), m5.a(zztpVar, a(zztpVar)), this.f10932f);
        } catch (Throwable th) {
            qd.b("", th);
            throw new RemoteException();
        }
    }
}
