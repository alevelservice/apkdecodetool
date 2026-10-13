package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.aw1;
import com.google.android.gms.internal.ads.db;
import com.google.android.gms.internal.ads.fi;
import com.google.android.gms.internal.ads.k6;
import com.google.android.gms.internal.ads.ks1;
import com.google.android.gms.internal.ads.mu1;
import com.google.android.gms.internal.ads.oi;
import com.google.android.gms.internal.ads.oj;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.rj;
import com.google.android.gms.internal.ads.wa;
import com.google.android.gms.internal.ads.x;
import com.google.android.gms.internal.ads.z;
import com.google.android.gms.internal.ads.zzamx;
import java.util.Collections;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class zze extends zzamx implements q {

    @VisibleForTesting
    private static final int u = Color.argb(0, 0, 0, 0);

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    private i f4581e;

    /* renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    private zzo f4582f;

    /* renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    private FrameLayout f4584h;

    /* renamed from: i, reason: collision with root package name */
    @VisibleForTesting
    private WebChromeClient.CustomViewCallback f4585i;

    /* renamed from: l, reason: collision with root package name */
    @VisibleForTesting
    private f f4588l;
    private Runnable o;
    private boolean p;
    private boolean q;

    @VisibleForTesting
    fi zzcyx;

    @VisibleForTesting
    AdOverlayInfoParcel zzdgo;
    protected final Activity zzzr;

    /* renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    private boolean f4583g = false;

    /* renamed from: j, reason: collision with root package name */
    @VisibleForTesting
    private boolean f4586j = false;

    /* renamed from: k, reason: collision with root package name */
    @VisibleForTesting
    private boolean f4587k = false;

    @VisibleForTesting
    private boolean m = false;

    @VisibleForTesting
    int zzdgx = 0;
    private final Object n = new Object();
    private boolean r = false;
    private boolean s = false;
    private boolean t = true;

    public zze(Activity activity) {
        this.zzzr = activity;
    }

    private final void a(boolean z) {
        int intValue = ((Integer) mu1.e().a(aw1.H2)).intValue();
        n nVar = new n();
        nVar.f4572d = 50;
        nVar.f4569a = z ? intValue : 0;
        nVar.f4570b = z ? 0 : intValue;
        nVar.f4571c = intValue;
        this.f4582f = new zzo(this.zzzr, nVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(z ? 11 : 9);
        zza(z, this.zzdgo.f4556k);
        this.f4588l.addView(this.f4582f, layoutParams);
    }

    private final void b(boolean z) {
        if (!this.q) {
            this.zzzr.requestWindowFeature(1);
        }
        Window window = this.zzzr.getWindow();
        if (window != null) {
            fi fiVar = this.zzdgo.f4553h;
            oj zzyy = fiVar != null ? fiVar.zzyy() : null;
            boolean z2 = zzyy != null && zzyy.c();
            this.m = false;
            if (z2) {
                int i2 = this.zzdgo.n;
                com.google.android.gms.ads.internal.n.e();
                if (i2 == 6) {
                    this.m = this.zzzr.getResources().getConfiguration().orientation == 1;
                } else {
                    int i3 = this.zzdgo.n;
                    com.google.android.gms.ads.internal.n.e();
                    if (i3 == 7) {
                        this.m = this.zzzr.getResources().getConfiguration().orientation == 2;
                    }
                }
            }
            boolean z3 = this.m;
            StringBuilder sb = new StringBuilder(46);
            sb.append("Delay onShow to next orientation change: ");
            sb.append(z3);
            qd.a(sb.toString());
            setRequestedOrientation(this.zzdgo.n);
            com.google.android.gms.ads.internal.n.e();
            window.setFlags(16777216, 16777216);
            qd.a("Hardware acceleration on the AdActivity window enabled.");
            if (!this.f4587k) {
                this.f4588l.setBackgroundColor(-16777216);
            } else {
                this.f4588l.setBackgroundColor(u);
            }
            this.zzzr.setContentView(this.f4588l);
            this.q = true;
            if (z) {
                try {
                    com.google.android.gms.ads.internal.n.d();
                    this.zzcyx = oi.a(this.zzzr, this.zzdgo.f4553h != null ? this.zzdgo.f4553h.zzyw() : null, this.zzdgo.f4553h != null ? this.zzdgo.f4553h.zzyx() : null, true, z2, null, this.zzdgo.q, null, null, this.zzdgo.f4553h != null ? this.zzdgo.f4553h.zzxm() : null, ks1.a(), null, false);
                    oj zzyy2 = this.zzcyx.zzyy();
                    AdOverlayInfoParcel adOverlayInfoParcel = this.zzdgo;
                    x xVar = adOverlayInfoParcel.t;
                    z zVar = adOverlayInfoParcel.f4554i;
                    p pVar = adOverlayInfoParcel.m;
                    fi fiVar2 = adOverlayInfoParcel.f4553h;
                    zzyy2.a(null, xVar, null, zVar, pVar, true, null, fiVar2 != null ? fiVar2.zzyy().e() : null, null, null);
                    this.zzcyx.zzyy().a(new rj(this) { // from class: com.google.android.gms.ads.internal.overlay.c

                        /* renamed from: a, reason: collision with root package name */
                        private final zze f4558a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f4558a = this;
                        }

                        @Override // com.google.android.gms.internal.ads.rj
                        public final void a(boolean z4) {
                            fi fiVar3 = this.f4558a.zzcyx;
                            if (fiVar3 != null) {
                                fiVar3.zzsq();
                            }
                        }
                    });
                    AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzdgo;
                    String str = adOverlayInfoParcel2.p;
                    if (str != null) {
                        this.zzcyx.loadUrl(str);
                    } else {
                        String str2 = adOverlayInfoParcel2.f4557l;
                        if (str2 != null) {
                            this.zzcyx.loadDataWithBaseURL(adOverlayInfoParcel2.f4555j, str2, "text/html", "UTF-8", null);
                        } else {
                            throw new g("No URL or HTML to display in ad overlay.");
                        }
                    }
                    fi fiVar3 = this.zzdgo.f4553h;
                    if (fiVar3 != null) {
                        fiVar3.zzb(this);
                    }
                } catch (Exception e2) {
                    qd.b("Error obtaining webview.", e2);
                    throw new g("Could not obtain webview for the overlay.");
                }
            } else {
                this.zzcyx = this.zzdgo.f4553h;
                this.zzcyx.zzbq(this.zzzr);
            }
            this.zzcyx.zza(this);
            fi fiVar4 = this.zzdgo.f4553h;
            if (fiVar4 != null) {
                a(fiVar4.zzzc(), this.f4588l);
            }
            ViewParent parent = this.zzcyx.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(this.zzcyx.getView());
            }
            if (this.f4587k) {
                this.zzcyx.zzzk();
            }
            fi fiVar5 = this.zzcyx;
            Activity activity = this.zzzr;
            AdOverlayInfoParcel adOverlayInfoParcel3 = this.zzdgo;
            fiVar5.zza((ViewGroup) null, activity, adOverlayInfoParcel3.f4555j, adOverlayInfoParcel3.f4557l);
            this.f4588l.addView(this.zzcyx.getView(), -1, -1);
            if (!z && !this.m) {
                b();
            }
            a(z2);
            if (this.zzcyx.zzza()) {
                zza(z2, true);
                return;
            }
            return;
        }
        throw new g("Invalid activity, no window available.");
    }

    public final void close() {
        this.zzdgx = 2;
        this.zzzr.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onActivityResult(int i2, int i3, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onBackPressed() {
        this.zzdgx = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public void onCreate(Bundle bundle) {
        this.zzzr.requestWindowFeature(1);
        this.f4586j = bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        try {
            this.zzdgo = AdOverlayInfoParcel.a(this.zzzr.getIntent());
            if (this.zzdgo != null) {
                if (this.zzdgo.q.f11002g > 7500000) {
                    this.zzdgx = 3;
                }
                if (this.zzzr.getIntent() != null) {
                    this.t = this.zzzr.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
                }
                if (this.zzdgo.s != null) {
                    this.f4587k = this.zzdgo.s.f4595e;
                } else {
                    this.f4587k = false;
                }
                if (this.f4587k && this.zzdgo.s.f4600j != -1) {
                    new h(this).b();
                }
                if (bundle == null) {
                    if (this.zzdgo.f4552g != null && this.t) {
                        this.zzdgo.f4552g.b();
                    }
                    if (this.zzdgo.o != 1 && this.zzdgo.f4551f != null) {
                        this.zzdgo.f4551f.onAdClicked();
                    }
                }
                this.f4588l = new f(this.zzzr, this.zzdgo.r, this.zzdgo.q.f11000e);
                this.f4588l.setId(1000);
                com.google.android.gms.ads.internal.n.e().a(this.zzzr);
                int i2 = this.zzdgo.o;
                if (i2 == 1) {
                    b(false);
                    return;
                }
                if (i2 == 2) {
                    this.f4581e = new i(this.zzdgo.f4553h);
                    b(false);
                    return;
                } else {
                    if (i2 == 3) {
                        b(true);
                        return;
                    }
                    throw new g("Could not determine ad overlay type.");
                }
            }
            throw new g("Could not get info for ad overlay.");
        } catch (g e2) {
            qd.d(e2.getMessage());
            this.zzdgx = 3;
            this.zzzr.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onDestroy() {
        fi fiVar = this.zzcyx;
        if (fiVar != null) {
            this.f4588l.removeView(fiVar.getView());
        }
        a();
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onPause() {
        zzsj();
        m mVar = this.zzdgo.f4552g;
        if (mVar != null) {
            mVar.onPause();
        }
        if (!((Boolean) mu1.e().a(aw1.F2)).booleanValue() && this.zzcyx != null && (!this.zzzr.isFinishing() || this.f4581e == null)) {
            com.google.android.gms.ads.internal.n.e();
            db.a(this.zzcyx);
        }
        a();
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onRestart() {
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onResume() {
        m mVar = this.zzdgo.f4552g;
        if (mVar != null) {
            mVar.onResume();
        }
        a(this.zzzr.getResources().getConfiguration());
        if (((Boolean) mu1.e().a(aw1.F2)).booleanValue()) {
            return;
        }
        fi fiVar = this.zzcyx;
        if (fiVar != null && !fiVar.isDestroyed()) {
            com.google.android.gms.ads.internal.n.e();
            db.b(this.zzcyx);
        } else {
            qd.d("The webview does not exist. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f4586j);
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onStart() {
        if (((Boolean) mu1.e().a(aw1.F2)).booleanValue()) {
            fi fiVar = this.zzcyx;
            if (fiVar != null && !fiVar.isDestroyed()) {
                com.google.android.gms.ads.internal.n.e();
                db.b(this.zzcyx);
            } else {
                qd.d("The webview does not exist. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onStop() {
        if (((Boolean) mu1.e().a(aw1.F2)).booleanValue() && this.zzcyx != null && (!this.zzzr.isFinishing() || this.f4581e == null)) {
            com.google.android.gms.ads.internal.n.e();
            db.a(this.zzcyx);
        }
        a();
    }

    public final void setRequestedOrientation(int i2) {
        if (this.zzzr.getApplicationInfo().targetSdkVersion >= ((Integer) mu1.e().a(aw1.r3)).intValue()) {
            if (this.zzzr.getApplicationInfo().targetSdkVersion <= ((Integer) mu1.e().a(aw1.s3)).intValue()) {
                if (Build.VERSION.SDK_INT >= ((Integer) mu1.e().a(aw1.t3)).intValue()) {
                    if (Build.VERSION.SDK_INT <= ((Integer) mu1.e().a(aw1.u3)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            this.zzzr.setRequestedOrientation(i2);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.n.g().b(th, "AdOverlay.setRequestedOrientation");
        }
    }

    public final void zza(boolean z, boolean z2) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzi zziVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        zzi zziVar2;
        boolean z3 = true;
        boolean z4 = ((Boolean) mu1.e().a(aw1.P0)).booleanValue() && (adOverlayInfoParcel2 = this.zzdgo) != null && (zziVar2 = adOverlayInfoParcel2.s) != null && zziVar2.f4602l;
        boolean z5 = ((Boolean) mu1.e().a(aw1.Q0)).booleanValue() && (adOverlayInfoParcel = this.zzdgo) != null && (zziVar = adOverlayInfoParcel.s) != null && zziVar.m;
        if (z && z2 && z4 && !z5) {
            new k6(this.zzcyx, "useCustomClose").a("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzo zzoVar = this.f4582f;
        if (zzoVar != null) {
            if (!z5 && (!z2 || z4)) {
                z3 = false;
            }
            zzoVar.zzae(z3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void zzag(IObjectWrapper iObjectWrapper) {
        a((Configuration) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void zzcz() {
        this.q = true;
    }

    public final void zzsj() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdgo;
        if (adOverlayInfoParcel != null && this.f4583g) {
            setRequestedOrientation(adOverlayInfoParcel.n);
        }
        if (this.f4584h != null) {
            this.zzzr.setContentView(this.f4588l);
            this.q = true;
            this.f4584h.removeAllViews();
            this.f4584h = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.f4585i;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.f4585i = null;
        }
        this.f4583g = false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.q
    public final void zzsk() {
        this.zzdgx = 1;
        this.zzzr.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final boolean zzsl() {
        this.zzdgx = 0;
        fi fiVar = this.zzcyx;
        if (fiVar == null) {
            return true;
        }
        boolean zzzf = fiVar.zzzf();
        if (!zzzf) {
            this.zzcyx.zza("onbackblocked", Collections.emptyMap());
        }
        return zzzf;
    }

    public final void zzsm() {
        this.f4588l.removeView(this.f4582f);
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zzso() {
        fi fiVar;
        m mVar;
        if (this.s) {
            return;
        }
        this.s = true;
        fi fiVar2 = this.zzcyx;
        if (fiVar2 != null) {
            this.f4588l.removeView(fiVar2.getView());
            i iVar = this.f4581e;
            if (iVar != null) {
                this.zzcyx.zzbq(iVar.f4566d);
                this.zzcyx.zzaq(false);
                ViewGroup viewGroup = this.f4581e.f4565c;
                View view = this.zzcyx.getView();
                i iVar2 = this.f4581e;
                viewGroup.addView(view, iVar2.f4563a, iVar2.f4564b);
                this.f4581e = null;
            } else if (this.zzzr.getApplicationContext() != null) {
                this.zzcyx.zzbq(this.zzzr.getApplicationContext());
            }
            this.zzcyx = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdgo;
        if (adOverlayInfoParcel != null && (mVar = adOverlayInfoParcel.f4552g) != null) {
            mVar.a();
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzdgo;
        if (adOverlayInfoParcel2 == null || (fiVar = adOverlayInfoParcel2.f4553h) == null) {
            return;
        }
        a(fiVar.zzzc(), this.zzdgo.f4553h.getView());
    }

    public final void zzsp() {
        if (this.m) {
            this.m = false;
            b();
        }
    }

    public final void zzsr() {
        this.f4588l.f4561f = true;
    }

    public final void zzss() {
        synchronized (this.n) {
            this.p = true;
            if (this.o != null) {
                wa.f10063h.removeCallbacks(this.o);
                wa.f10063h.post(this.o);
            }
        }
    }

    public final void zza(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        this.f4584h = new FrameLayout(this.zzzr);
        this.f4584h.setBackgroundColor(-16777216);
        this.f4584h.addView(view, -1, -1);
        this.zzzr.setContentView(this.f4584h);
        this.q = true;
        this.f4585i = customViewCallback;
        this.f4583g = true;
    }

    private final void a() {
        if (!this.zzzr.isFinishing() || this.r) {
            return;
        }
        this.r = true;
        fi fiVar = this.zzcyx;
        if (fiVar != null) {
            fiVar.zzdc(this.zzdgx);
            synchronized (this.n) {
                if (!this.p && this.zzcyx.zzzg()) {
                    this.o = new Runnable(this) { // from class: com.google.android.gms.ads.internal.overlay.e

                        /* renamed from: e, reason: collision with root package name */
                        private final zze f4559e;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f4559e = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f4559e.zzso();
                        }
                    };
                    wa.f10063h.postDelayed(this.o, ((Long) mu1.e().a(aw1.O0)).longValue());
                    return;
                }
            }
        }
        zzso();
    }

    private static void a(@Nullable IObjectWrapper iObjectWrapper, @Nullable View view) {
        if (iObjectWrapper == null || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.n.r().a(iObjectWrapper, view);
    }

    private final void a(Configuration configuration) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzi zziVar;
        zzi zziVar2;
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzdgo;
        boolean z = true;
        boolean z2 = false;
        boolean z3 = (adOverlayInfoParcel2 == null || (zziVar2 = adOverlayInfoParcel2.s) == null || !zziVar2.f4596f) ? false : true;
        boolean a2 = com.google.android.gms.ads.internal.n.e().a(this.zzzr, configuration);
        if ((this.f4587k && !z3) || a2) {
            z = false;
        } else if (Build.VERSION.SDK_INT >= 19 && (adOverlayInfoParcel = this.zzdgo) != null && (zziVar = adOverlayInfoParcel.s) != null && zziVar.f4601k) {
            z2 = true;
        }
        Window window = this.zzzr.getWindow();
        if (((Boolean) mu1.e().a(aw1.R0)).booleanValue() && Build.VERSION.SDK_INT >= 19) {
            View decorView = window.getDecorView();
            int i2 = 256;
            if (z) {
                i2 = 5380;
                if (z2) {
                    i2 = 5894;
                }
            }
            decorView.setSystemUiVisibility(i2);
            return;
        }
        if (z) {
            window.addFlags(1024);
            window.clearFlags(2048);
            if (Build.VERSION.SDK_INT < 19 || !z2) {
                return;
            }
            window.getDecorView().setSystemUiVisibility(4098);
            return;
        }
        window.addFlags(2048);
        window.clearFlags(1024);
    }

    private final void b() {
        this.zzcyx.zzsq();
    }
}
