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
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzbun extends zzaav implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, t20 {
    public static final String[] zzflv = {"2011", "1009", "3010"};

    /* renamed from: e, reason: collision with root package name */
    private final String f11055e;

    /* renamed from: g, reason: collision with root package name */
    private FrameLayout f11057g;

    /* renamed from: h, reason: collision with root package name */
    private FrameLayout f11058h;

    /* renamed from: i, reason: collision with root package name */
    private tz0 f11059i;

    /* renamed from: j, reason: collision with root package name */
    private View f11060j;

    /* renamed from: k, reason: collision with root package name */
    private final int f11061k;

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("this")
    private d10 f11062l;
    private bq1 m;
    private zzaan o;
    private boolean p;

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private Map<String, WeakReference<View>> f11056f = new HashMap();
    private IObjectWrapper n = null;
    private boolean q = false;

    public zzbun(FrameLayout frameLayout, FrameLayout frameLayout2, int i2) {
        String str;
        this.f11057g = frameLayout;
        this.f11058h = frameLayout2;
        this.f11061k = i2;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = "1007";
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = "2009";
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
            str = "3012";
        }
        this.f11055e = str;
        com.google.android.gms.ads.internal.n.z();
        pe.a((View) frameLayout, (ViewTreeObserver.OnGlobalLayoutListener) this);
        com.google.android.gms.ads.internal.n.z();
        pe.a((View) frameLayout, (ViewTreeObserver.OnScrollChangedListener) this);
        this.f11059i = yd.f10543d;
        this.m = new bq1(this.f11057g.getContext(), this.f11057g);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    private final synchronized void a() {
        this.f11059i.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.d20

            /* renamed from: e, reason: collision with root package name */
            private final zzbun f6145e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6145e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6145e.zzair();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final synchronized void destroy() {
        if (this.q) {
            return;
        }
        if (this.f11062l != null) {
            this.f11062l.b(this);
            this.f11062l = null;
        }
        this.f11056f.clear();
        this.f11057g.removeAllViews();
        this.f11058h.removeAllViews();
        this.f11056f = null;
        this.f11057g = null;
        this.f11058h = null;
        this.f11060j = null;
        this.m = null;
        this.q = true;
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        if (this.f11062l != null) {
            this.f11062l.f();
            this.f11062l.a(view, this.f11057g, zzaik(), zzail(), false);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        if (this.f11062l != null) {
            this.f11062l.a(this.f11057g, zzaik(), zzail(), d10.d(this.f11057g));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        if (this.f11062l != null) {
            this.f11062l.a(this.f11057g, zzaik(), zzail(), d10.d(this.f11057g));
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.f11062l != null) {
            this.f11062l.a(view, motionEvent, this.f11057g);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.t20
    public final synchronized void zza(String str, View view, boolean z) {
        if (this.q) {
            return;
        }
        if (view == null) {
            this.f11056f.remove(str);
            return;
        }
        this.f11056f.put(str, new WeakReference<>(view));
        if (!"1098".equals(str) && !"3011".equals(str)) {
            if (tc.a(this.f11061k)) {
                view.setOnTouchListener(this);
            }
            view.setClickable(true);
            view.setOnClickListener(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.t20
    public final /* synthetic */ View zzaer() {
        return this.f11057g;
    }

    @Override // com.google.android.gms.internal.ads.t20
    public final synchronized Map<String, WeakReference<View>> zzaik() {
        return this.f11056f;
    }

    @Override // com.google.android.gms.internal.ads.t20
    public final synchronized Map<String, WeakReference<View>> zzail() {
        return this.f11056f;
    }

    @Override // com.google.android.gms.internal.ads.t20
    @Nullable
    public final synchronized Map<String, WeakReference<View>> zzaim() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.t20
    public final synchronized String zzain() {
        return this.f11055e;
    }

    @Override // com.google.android.gms.internal.ads.t20
    public final FrameLayout zzaio() {
        return this.f11058h;
    }

    @Override // com.google.android.gms.internal.ads.t20
    public final bq1 zzaip() {
        return this.m;
    }

    @Override // com.google.android.gms.internal.ads.t20
    @Nullable
    public final IObjectWrapper zzaiq() {
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzair() {
        if (this.f11060j == null) {
            this.f11060j = new View(this.f11057g.getContext());
            this.f11060j.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
        }
        if (this.f11057g != this.f11060j.getParent()) {
            this.f11057g.addView(this.f11060j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final synchronized void zzc(String str, IObjectWrapper iObjectWrapper) {
        zza(str, (View) ObjectWrapper.unwrap(iObjectWrapper), true);
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final synchronized IObjectWrapper zzcj(String str) {
        return ObjectWrapper.wrap(zzfw(str));
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final synchronized void zze(IObjectWrapper iObjectWrapper) {
        if (this.q) {
            return;
        }
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof d10)) {
            qd.d("Not an instance of native engine. This is most likely a transient error");
            return;
        }
        if (this.f11062l != null) {
            this.f11062l.b(this);
        }
        a();
        this.f11062l = (d10) unwrap;
        this.f11062l.a(this);
        this.f11062l.b(this.f11057g);
        this.f11062l.c(this.f11058h);
        if (this.p) {
            this.f11062l.l().a(this.o);
        }
    }

    @Override // com.google.android.gms.internal.ads.t20
    public final synchronized View zzfw(String str) {
        if (this.q) {
            return null;
        }
        WeakReference<View> weakReference = this.f11056f.get(str);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final synchronized void zzi(IObjectWrapper iObjectWrapper) {
        this.f11062l.a((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final void zzj(IObjectWrapper iObjectWrapper) {
        onTouch(this.f11057g, (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final synchronized void zzk(IObjectWrapper iObjectWrapper) {
        if (this.q) {
            return;
        }
        this.n = iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final synchronized void zzc(IObjectWrapper iObjectWrapper, int i2) {
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final synchronized void zza(zzaan zzaanVar) {
        if (this.q) {
            return;
        }
        this.p = true;
        this.o = zzaanVar;
        if (this.f11062l != null) {
            this.f11062l.l().a(zzaanVar);
        }
    }
}
