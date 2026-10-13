package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzaje extends zzajg {

    /* renamed from: e, reason: collision with root package name */
    private Map<Class<? extends com.google.android.gms.ads.mediation.u>, com.google.android.gms.ads.mediation.u> f10919e;

    static {
        new o5();
    }

    private final <NetworkExtrasT extends com.google.ads.mediation.e, ServerParametersT extends MediationServerParameters> zzaji a(String str) {
        try {
            Class<?> cls = Class.forName(str, false, zzaje.class.getClassLoader());
            if (com.google.ads.mediation.b.class.isAssignableFrom(cls)) {
                com.google.ads.mediation.b bVar = (com.google.ads.mediation.b) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                return new zzakh(bVar, (com.google.ads.mediation.e) this.f10919e.get(bVar.getAdditionalParametersType()));
            }
            if (com.google.android.gms.ads.mediation.e.class.isAssignableFrom(cls)) {
                return new zzajz((com.google.android.gms.ads.mediation.e) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            }
            if (com.google.android.gms.ads.mediation.a.class.isAssignableFrom(cls)) {
                return new zzajz((com.google.android.gms.ads.mediation.a) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            }
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 64);
            sb.append("Could not instantiate mediation adapter: ");
            sb.append(str);
            sb.append(" (not a valid adapter).");
            qd.d(sb.toString());
            throw new RemoteException();
        } catch (Throwable unused) {
            return b(str);
        }
    }

    private final zzaji b(String str) {
        try {
            qd.a("Reflection failed, retrying using direct instantiation");
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 43);
            sb.append("Could not instantiate mediation adapter: ");
            sb.append(str);
            sb.append(". ");
            qd.c(sb.toString(), th);
        }
        if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
            return new zzajz(new AdMobAdapter());
        }
        if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
            return new zzajz(new AdUrlAdapter());
        }
        if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            return new zzajz(new CustomEventAdapter());
        }
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            com.google.ads.mediation.customevent.CustomEventAdapter customEventAdapter = new com.google.ads.mediation.customevent.CustomEventAdapter();
            return new zzakh(customEventAdapter, (com.google.android.gms.ads.mediation.customevent.c) this.f10919e.get(customEventAdapter.getAdditionalParametersType()));
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzajd
    public final zzaji zzcz(String str) {
        return a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzajd
    public final boolean zzda(String str) {
        try {
            return com.google.android.gms.ads.mediation.customevent.a.class.isAssignableFrom(Class.forName(str, false, zzaje.class.getClassLoader()));
        } catch (Throwable unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 80);
            sb.append("Could not load custom event implementation class: ");
            sb.append(str);
            sb.append(", assuming old implementation.");
            qd.d(sb.toString());
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajd
    public final zzalj zzdb(String str) {
        return o5.a(str);
    }

    public final void zzf(Map<Class<? extends com.google.android.gms.ads.mediation.u>, com.google.android.gms.ads.mediation.u> map) {
        this.f10919e = map;
    }
}
