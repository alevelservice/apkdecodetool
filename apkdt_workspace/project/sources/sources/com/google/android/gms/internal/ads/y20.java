package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class y20 implements u10 {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final zzajq f10461a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final zzajr f10462b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private final zzajw f10463c;

    /* renamed from: d, reason: collision with root package name */
    private final rt f10464d;

    /* renamed from: e, reason: collision with root package name */
    private final it f10465e;

    /* renamed from: f, reason: collision with root package name */
    private final Context f10466f;

    /* renamed from: g, reason: collision with root package name */
    private final ns0 f10467g;

    /* renamed from: h, reason: collision with root package name */
    private final zzawv f10468h;

    /* renamed from: i, reason: collision with root package name */
    private final ws0 f10469i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f10470j = false;

    /* renamed from: k, reason: collision with root package name */
    private boolean f10471k = false;

    public y20(@Nullable zzajq zzajqVar, @Nullable zzajr zzajrVar, @Nullable zzajw zzajwVar, rt rtVar, it itVar, Context context, ns0 ns0Var, zzawv zzawvVar, ws0 ws0Var) {
        this.f10461a = zzajqVar;
        this.f10462b = zzajrVar;
        this.f10463c = zzajwVar;
        this.f10464d = rtVar;
        this.f10465e = itVar;
        this.f10466f = context;
        this.f10467g = ns0Var;
        this.f10468h = zzawvVar;
        this.f10469i = ws0Var;
    }

    private final void b(View view) {
        try {
            if (this.f10463c != null && !this.f10463c.getOverrideClickHandling()) {
                this.f10463c.zzx(ObjectWrapper.wrap(view));
                this.f10465e.onAdClicked();
            } else if (this.f10461a != null && !this.f10461a.getOverrideClickHandling()) {
                this.f10461a.zzx(ObjectWrapper.wrap(view));
                this.f10465e.onAdClicked();
            } else {
                if (this.f10462b == null || this.f10462b.getOverrideClickHandling()) {
                    return;
                }
                this.f10462b.zzx(ObjectWrapper.wrap(view));
                this.f10465e.onAdClicked();
            }
        } catch (RemoteException e2) {
            qd.c("Failed to call handleClick", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(View view) {
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(View view, MotionEvent motionEvent, @Nullable View view2) {
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(View view, @Nullable Map<String, WeakReference<View>> map, @Nullable Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        try {
            IObjectWrapper wrap = ObjectWrapper.wrap(view);
            HashMap<String, View> a2 = a(map);
            HashMap<String, View> a3 = a(map2);
            if (this.f10463c != null) {
                this.f10463c.zzc(wrap, ObjectWrapper.wrap(a2), ObjectWrapper.wrap(a3));
                return;
            }
            if (this.f10461a != null) {
                this.f10461a.zzc(wrap, ObjectWrapper.wrap(a2), ObjectWrapper.wrap(a3));
                this.f10461a.zzy(wrap);
            } else if (this.f10462b != null) {
                this.f10462b.zzc(wrap, ObjectWrapper.wrap(a2), ObjectWrapper.wrap(a3));
                this.f10462b.zzy(wrap);
            }
        } catch (RemoteException e2) {
            qd.c("Failed to call trackView", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void b() {
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void b(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void c() {
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final boolean c(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void cancelUnconfirmedClick() {
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void destroy() {
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final boolean isCustomClickGestureEnabled() {
        return this.f10467g.D;
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void zza(zzacl zzaclVar) {
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void zza(@Nullable zzwb zzwbVar) {
        qd.d("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void zzqs() {
        this.f10471k = true;
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void zza(zzvx zzvxVar) {
        qd.d("Mute This Ad is not supported for 3rd party ads");
    }

    private static HashMap<String, View> a(Map<String, WeakReference<View>> map) {
        HashMap<String, View> hashMap = new HashMap<>();
        if (map == null) {
            return hashMap;
        }
        synchronized (map) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view = entry.getValue().get();
                if (view != null) {
                    hashMap.put(entry.getKey(), view);
                }
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(View view, @Nullable Map<String, WeakReference<View>> map) {
        try {
            IObjectWrapper wrap = ObjectWrapper.wrap(view);
            if (this.f10463c != null) {
                this.f10463c.zzz(wrap);
            } else if (this.f10461a != null) {
                this.f10461a.zzz(wrap);
            } else if (this.f10462b != null) {
                this.f10462b.zzz(wrap);
            }
        } catch (RemoteException e2) {
            qd.c("Failed to call untrackView", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(View view, @Nullable View view2, @Nullable Map<String, WeakReference<View>> map, @Nullable Map<String, WeakReference<View>> map2, boolean z) {
        if (this.f10471k && this.f10467g.D) {
            return;
        }
        b(view);
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f10471k) {
            qd.d("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (!this.f10467g.D) {
            qd.d("Custom click reporting for 3p ads failed. Ad unit id not whitelisted.");
        } else {
            b(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(@Nullable View view, @Nullable Map<String, WeakReference<View>> map, @Nullable Map<String, WeakReference<View>> map2) {
        try {
            if (!this.f10470j && this.f10467g.z != null) {
                this.f10470j |= com.google.android.gms.ads.internal.n.m().b(this.f10466f, this.f10468h.f11000e, this.f10467g.z.toString(), this.f10469i.f10197f);
            }
            if (this.f10463c != null && !this.f10463c.getOverrideImpressionRecording()) {
                this.f10463c.recordImpression();
                this.f10464d.g();
            } else if (this.f10461a != null && !this.f10461a.getOverrideImpressionRecording()) {
                this.f10461a.recordImpression();
                this.f10464d.g();
            } else {
                if (this.f10462b == null || this.f10462b.getOverrideImpressionRecording()) {
                    return;
                }
                this.f10462b.recordImpression();
                this.f10464d.g();
            }
        } catch (RemoteException e2) {
            qd.c("Failed to call recordImpression", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a() {
        qd.d("Mute This Ad is not supported for 3rd party ads");
    }
}
