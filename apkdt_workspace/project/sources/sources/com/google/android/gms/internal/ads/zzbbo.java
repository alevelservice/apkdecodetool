package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzbbo extends FrameLayout implements fi {

    /* renamed from: e, reason: collision with root package name */
    private final fi f11029e;

    /* renamed from: f, reason: collision with root package name */
    private final Cif f11030f;

    /* renamed from: g, reason: collision with root package name */
    private final AtomicBoolean f11031g;

    public zzbbo(fi fiVar) {
        super(fiVar.getContext());
        this.f11031g = new AtomicBoolean();
        this.f11029e = fiVar;
        this.f11030f = new Cif(fiVar.zzyt(), this, this);
        if (zzzp()) {
            return;
        }
        addView(this.f11029e.getView());
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void destroy() {
        IObjectWrapper zzzc = zzzc();
        if (zzzc != null) {
            com.google.android.gms.ads.internal.n.r().b(zzzc);
            wa.f10063h.postDelayed(new ti(this), ((Integer) mu1.e().a(aw1.Q2)).intValue());
            return;
        }
        this.f11029e.destroy();
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.pj
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final WebView getWebView() {
        return this.f11029e.getWebView();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final boolean isDestroyed() {
        return this.f11029e.isDestroyed();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void loadData(String str, String str2, String str3) {
        this.f11029e.loadData(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.f11029e.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void loadUrl(String str) {
        this.f11029e.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void onPause() {
        this.f11030f.b();
        this.f11029e.onPause();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void onResume() {
        this.f11029e.onResume();
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.fi
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f11029e.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.fi
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f11029e.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void setRequestedOrientation(int i2) {
        this.f11029e.setRequestedOrientation(i2);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f11029e.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.f11029e.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.p1
    public final void zza(String str, Map<String, ?> map) {
        this.f11029e.zza(str, map);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzae(boolean z) {
        this.f11029e.zzae(z);
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final void zzao(boolean z) {
        this.f11029e.zzao(z);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzaq(IObjectWrapper iObjectWrapper) {
        this.f11029e.zzaq(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzar(boolean z) {
        this.f11029e.zzar(z);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzas(boolean z) {
        this.f11029e.zzas(z);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzat(boolean z) {
        this.f11029e.zzat(z);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzb(String str, o0<? super fi> o0Var) {
        this.f11029e.zzb(str, o0Var);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzbq(Context context) {
        this.f11029e.zzbq(context);
    }

    @Override // com.google.android.gms.internal.ads.ij
    public final void zzc(boolean z, int i2) {
        this.f11029e.zzc(z, i2);
    }

    @Override // com.google.android.gms.internal.ads.r2
    public final void zzct(String str) {
        this.f11029e.zzct(str);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzdc(int i2) {
        this.f11029e.zzdc(i2);
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final jh zzez(String str) {
        return this.f11029e.zzez(str);
    }

    @Override // com.google.android.gms.ads.internal.i
    public final void zzju() {
        this.f11029e.zzju();
    }

    @Override // com.google.android.gms.ads.internal.i
    public final void zzjv() {
        this.f11029e.zzjv();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzsq() {
        this.f11029e.zzsq();
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final void zzsr() {
        this.f11029e.zzsr();
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final Cif zzxi() {
        return this.f11030f;
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf
    public final zzbbu zzxj() {
        return this.f11029e.zzxj();
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final nw1 zzxk() {
        return this.f11029e.zzxk();
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf, com.google.android.gms.internal.ads.fj
    public final Activity zzxl() {
        return this.f11029e.zzxl();
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf
    public final com.google.android.gms.ads.internal.b zzxm() {
        return this.f11029e.zzxm();
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final String zzxn() {
        return this.f11029e.zzxn();
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf
    public final qw1 zzxo() {
        return this.f11029e.zzxo();
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf, com.google.android.gms.internal.ads.mj
    public final zzawv zzxp() {
        return this.f11029e.zzxp();
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final int zzxq() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final int zzxr() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final void zzxs() {
        this.f11029e.zzxs();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzyr() {
        this.f11029e.zzyr();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzys() {
        this.f11029e.zzys();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final Context zzyt() {
        return this.f11029e.zzyt();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final zze zzyu() {
        return this.f11029e.zzyu();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final zze zzyv() {
        return this.f11029e.zzyv();
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.kj
    public final uj zzyw() {
        return this.f11029e.zzyw();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final String zzyx() {
        return this.f11029e.zzyx();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final oj zzyy() {
        return this.f11029e.zzyy();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final WebViewClient zzyz() {
        return this.f11029e.zzyz();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final boolean zzza() {
        return this.f11029e.zzza();
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.nj
    public final t11 zzzb() {
        return this.f11029e.zzzb();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final IObjectWrapper zzzc() {
        return this.f11029e.zzzc();
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.ej
    public final boolean zzzd() {
        return this.f11029e.zzzd();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzze() {
        this.f11030f.a();
        this.f11029e.zzze();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final boolean zzzf() {
        return this.f11029e.zzzf();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final boolean zzzg() {
        return this.f11029e.zzzg();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzzh() {
        this.f11029e.zzzh();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzzi() {
        this.f11029e.zzzi();
    }

    @Override // com.google.android.gms.internal.ads.fi
    @Nullable
    public final g zzzj() {
        return this.f11029e.zzzj();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzzk() {
        setBackgroundColor(0);
        this.f11029e.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzzl() {
        TextView textView = new TextView(getContext());
        Resources b2 = com.google.android.gms.ads.internal.n.g().b();
        textView.setText(b2 != null ? b2.getString(com.google.android.gms.ads.m.a.s7) : "Test Ad");
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        if (Build.VERSION.SDK_INT >= 16) {
            textView.setBackground(gradientDrawable);
        } else {
            textView.setBackgroundDrawable(gradientDrawable);
        }
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final nr1 zzzm() {
        return this.f11029e.zzzm();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final boolean zzzn() {
        return this.f11031g.get();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final qr1 zzzo() {
        return this.f11029e.zzzo();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final boolean zzzp() {
        return this.f11029e.zzzp();
    }

    @Override // com.google.android.gms.internal.ads.p1
    public final void zza(String str, JSONObject jSONObject) {
        this.f11029e.zza(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzaq(boolean z) {
        this.f11029e.zzaq(z);
    }

    @Override // com.google.android.gms.internal.ads.r2
    public final void zzb(String str, JSONObject jSONObject) {
        this.f11029e.zzb(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zza(String str, o0<? super fi> o0Var) {
        this.f11029e.zza(str, o0Var);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzb(zze zzeVar) {
        this.f11029e.zzb(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zza(String str, com.google.android.gms.common.util.p<o0<? super fi>> pVar) {
        this.f11029e.zza(str, pVar);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzb(String str, String str2, @Nullable String str3) {
        this.f11029e.zzb(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final void zza(boolean z, long j2) {
        this.f11029e.zza(z, j2);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final boolean zzb(boolean z, int i2) {
        if (!this.f11031g.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) mu1.e().a(aw1.D0)).booleanValue()) {
            return false;
        }
        if (this.f11029e.getParent() instanceof ViewGroup) {
            ((ViewGroup) this.f11029e.getParent()).removeView(this.f11029e.getView());
        }
        return this.f11029e.zzb(z, i2);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zza(zze zzeVar) {
        this.f11029e.zza(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zza(uj ujVar) {
        this.f11029e.zza(ujVar);
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf
    public final void zza(String str, jh jhVar) {
        this.f11029e.zza(str, jhVar);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zza(d dVar) {
        this.f11029e.zza(dVar);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zza(nr1 nr1Var) {
        this.f11029e.zza(nr1Var);
    }

    @Override // com.google.android.gms.internal.ads.fq1
    public final void zza(cq1 cq1Var) {
        this.f11029e.zza(cq1Var);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zza(@Nullable g gVar) {
        this.f11029e.zza(gVar);
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf
    public final void zza(zzbbu zzbbuVar) {
        this.f11029e.zza(zzbbuVar);
    }

    @Override // com.google.android.gms.internal.ads.ij
    public final void zza(zzb zzbVar) {
        this.f11029e.zza(zzbVar);
    }

    @Override // com.google.android.gms.internal.ads.ij
    public final void zza(boolean z, int i2, String str) {
        this.f11029e.zza(z, i2, str);
    }

    @Override // com.google.android.gms.internal.ads.ij
    public final void zza(boolean z, int i2, String str, String str2) {
        this.f11029e.zza(z, i2, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zza(ViewGroup viewGroup, Activity activity, String str, String str2) {
        this.f11029e.zza(this, activity, str, str2);
    }
}
