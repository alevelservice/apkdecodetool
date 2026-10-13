package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.overlay.zzs;
import com.google.android.gms.ads.internal.overlay.zzt;
import com.google.android.gms.ads.internal.overlay.zzy;
import com.google.android.gms.ads.internal.overlay.zzz;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.es0;
import com.google.android.gms.internal.ads.mk;
import com.google.android.gms.internal.ads.zzaaw;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzajd;
import com.google.android.gms.internal.ads.zzamu;
import com.google.android.gms.internal.ads.zzane;
import com.google.android.gms.internal.ads.zzapl;
import com.google.android.gms.internal.ads.zzaqg;
import com.google.android.gms.internal.ads.zzawv;
import com.google.android.gms.internal.ads.zzbun;
import com.google.android.gms.internal.ads.zzbuo;
import com.google.android.gms.internal.ads.zzcli;
import com.google.android.gms.internal.ads.zzclk;
import com.google.android.gms.internal.ads.zzclo;
import com.google.android.gms.internal.ads.zzclu;
import com.google.android.gms.internal.ads.zztw;
import com.google.android.gms.internal.ads.zzux;
import com.google.android.gms.internal.ads.zzve;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvu;
import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class ClientApi extends zzvq {
    @KeepForSdk
    public ClientApi() {
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzve zza(IObjectWrapper iObjectWrapper, zztw zztwVar, String str, zzajd zzajdVar, int i2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzclo(mk.a(context, zzajdVar, i2), context, zztwVar, str);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzve zzb(IObjectWrapper iObjectWrapper, zztw zztwVar, String str, zzajd zzajdVar, int i2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzclu(mk.a(context, zzajdVar, i2), context, zztwVar, str);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzaaw zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzbun((FrameLayout) ObjectWrapper.unwrap(iObjectWrapper), (FrameLayout) ObjectWrapper.unwrap(iObjectWrapper2), 15300000);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzamu zzf(IObjectWrapper iObjectWrapper) {
        Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        AdOverlayInfoParcel a2 = AdOverlayInfoParcel.a(activity.getIntent());
        if (a2 == null) {
            return new zzt(activity);
        }
        int i2 = a2.o;
        if (i2 == 1) {
            return new zzq(activity);
        }
        if (i2 == 2) {
            return new zzz(activity);
        }
        if (i2 == 3) {
            return new zzy(activity);
        }
        if (i2 != 4) {
            return new zzt(activity);
        }
        return new zzs(activity, a2);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzvu zzg(IObjectWrapper iObjectWrapper) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzane zzh(IObjectWrapper iObjectWrapper) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzux zza(IObjectWrapper iObjectWrapper, String str, zzajd zzajdVar, int i2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzcli(mk.a(context, zzajdVar, i2), context, str);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzaqg zzb(IObjectWrapper iObjectWrapper, String str, zzajd zzajdVar, int i2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        es0 m = mk.a(context, zzajdVar, i2).m();
        m.a(context);
        m.a(str);
        return m.a().b();
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzve zzc(IObjectWrapper iObjectWrapper, zztw zztwVar, String str, zzajd zzajdVar, int i2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzclk(mk.a(context, zzajdVar, i2), context, zztwVar, str);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzapl zza(IObjectWrapper iObjectWrapper, zzajd zzajdVar, int i2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        es0 m = mk.a(context, zzajdVar, i2).m();
        m.a(context);
        return m.a().a();
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzvu zza(IObjectWrapper iObjectWrapper, int i2) {
        return mk.a((Context) ObjectWrapper.unwrap(iObjectWrapper), i2).g();
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzve zza(IObjectWrapper iObjectWrapper, zztw zztwVar, String str, int i2) {
        return new zzj((Context) ObjectWrapper.unwrap(iObjectWrapper), zztwVar, str, new zzawv(15300000, i2, true, false));
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzaaz zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        return new zzbuo((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }
}
