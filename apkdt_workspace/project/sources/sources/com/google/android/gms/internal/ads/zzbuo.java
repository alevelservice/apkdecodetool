package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzbuo extends zzabc implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, t20 {

    /* renamed from: e, reason: collision with root package name */
    private final WeakReference<View> f11063e;

    /* renamed from: f, reason: collision with root package name */
    private final Map<String, WeakReference<View>> f11064f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    private final Map<String, WeakReference<View>> f11065g = new HashMap();

    /* renamed from: h, reason: collision with root package name */
    private final Map<String, WeakReference<View>> f11066h = new HashMap();

    /* renamed from: i, reason: collision with root package name */
    @GuardedBy("this")
    private d10 f11067i;

    /* renamed from: j, reason: collision with root package name */
    private bq1 f11068j;

    public zzbuo(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        com.google.android.gms.ads.internal.n.z();
        pe.a(view, (ViewTreeObserver.OnGlobalLayoutListener) this);
        com.google.android.gms.ads.internal.n.z();
        pe.a(view, (ViewTreeObserver.OnScrollChangedListener) this);
        this.f11063e = new WeakReference<>(view);
        for (Map.Entry<String, View> entry : hashMap.entrySet()) {
            String key = entry.getKey();
            View value = entry.getValue();
            if (value != null) {
                this.f11064f.put(key, new WeakReference<>(value));
                if (!"1098".equals(key) && !"3011".equals(key)) {
                    value.setOnTouchListener(this);
                    value.setClickable(true);
                    value.setOnClickListener(this);
                }
            }
        }
        this.f11066h.putAll(this.f11064f);
        for (Map.Entry<String, View> entry2 : hashMap2.entrySet()) {
            View value2 = entry2.getValue();
            if (value2 != null) {
                this.f11065g.put(entry2.getKey(), new WeakReference<>(value2));
                value2.setOnTouchListener(this);
                value2.setClickable(false);
            }
        }
        this.f11066h.putAll(this.f11065g);
        this.f11068j = new bq1(view.getContext(), view);
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        if (this.f11067i != null) {
            this.f11067i.a(view, zzaer(), zzaik(), zzail(), true);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        if (this.f11067i != null) {
            this.f11067i.a(zzaer(), zzaik(), zzail(), d10.d(zzaer()));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        if (this.f11067i != null) {
            this.f11067i.a(zzaer(), zzaik(), zzail(), d10.d(zzaer()));
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.f11067i != null) {
            this.f11067i.a(view, motionEvent, zzaer());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaaz
    public final synchronized void unregisterNativeAd() {
        if (this.f11067i != null) {
            this.f11067i.b(this);
            this.f11067i = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.t20
    public final synchronized void zza(String str, View view, boolean z) {
        if (view == null) {
            this.f11066h.remove(str);
            this.f11064f.remove(str);
            this.f11065g.remove(str);
            return;
        }
        this.f11066h.put(str, new WeakReference<>(view));
        if (!"1098".equals(str) && !"3011".equals(str)) {
            this.f11064f.put(str, new WeakReference<>(view));
            view.setClickable(true);
            view.setOnClickListener(this);
            view.setOnTouchListener(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.t20
    @Nullable
    public final View zzaer() {
        return this.f11063e.get();
    }

    @Override // com.google.android.gms.internal.ads.t20
    public final synchronized Map<String, WeakReference<View>> zzaik() {
        return this.f11066h;
    }

    @Override // com.google.android.gms.internal.ads.t20
    public final synchronized Map<String, WeakReference<View>> zzail() {
        return this.f11064f;
    }

    @Override // com.google.android.gms.internal.ads.t20
    @Nullable
    public final synchronized Map<String, WeakReference<View>> zzaim() {
        return this.f11065g;
    }

    @Override // com.google.android.gms.internal.ads.t20
    public final synchronized String zzain() {
        return "1007";
    }

    @Override // com.google.android.gms.internal.ads.t20
    @Nullable
    public final FrameLayout zzaio() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.t20
    public final bq1 zzaip() {
        return this.f11068j;
    }

    @Override // com.google.android.gms.internal.ads.t20
    @Nullable
    public final synchronized IObjectWrapper zzaiq() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaaz
    public final synchronized void zze(IObjectWrapper iObjectWrapper) {
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof d10)) {
            qd.d("Not an instance of InternalNativeAd. This is most likely a transient error");
            return;
        }
        if (this.f11067i != null) {
            this.f11067i.b(this);
        }
        if (((d10) unwrap).j()) {
            this.f11067i = (d10) unwrap;
            this.f11067i.a(this);
            this.f11067i.b(zzaer());
            return;
        }
        qd.b("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
    }

    @Override // com.google.android.gms.internal.ads.t20
    public final synchronized View zzfw(String str) {
        WeakReference<View> weakReference = this.f11066h.get(str);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.google.android.gms.internal.ads.zzaaz
    public final synchronized void zzi(IObjectWrapper iObjectWrapper) {
        if (this.f11067i != null) {
            Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
            if (!(unwrap instanceof View)) {
                qd.d("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
            }
            this.f11067i.a((View) unwrap);
        }
    }
}
