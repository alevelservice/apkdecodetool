package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@VisibleForTesting
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public interface fi extends com.google.android.gms.ads.internal.i, p1, r2, tf, ej, fj, ij, mj, nj, pj, fq1 {
    void destroy();

    @Override // com.google.android.gms.internal.ads.tf, com.google.android.gms.internal.ads.fj
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    ViewParent getParent();

    View getView();

    WebView getWebView();

    int getWidth();

    boolean isDestroyed();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, @Nullable String str5);

    void loadUrl(String str);

    void measure(int i2, int i3);

    void onPause();

    void onResume();

    @Override // com.google.android.gms.internal.ads.tf
    void setBackgroundColor(int i2);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setRequestedOrientation(int i2);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    void zza(ViewGroup viewGroup, Activity activity, String str, String str2);

    void zza(zze zzeVar);

    void zza(d dVar);

    void zza(g gVar);

    void zza(nr1 nr1Var);

    void zza(uj ujVar);

    void zza(zzbbu zzbbuVar);

    void zza(String str, com.google.android.gms.common.util.p<o0<? super fi>> pVar);

    void zza(String str, jh jhVar);

    void zza(String str, o0<? super fi> o0Var);

    void zzae(boolean z);

    void zzaq(IObjectWrapper iObjectWrapper);

    void zzaq(boolean z);

    void zzar(boolean z);

    void zzas(boolean z);

    void zzat(boolean z);

    void zzb(zze zzeVar);

    void zzb(String str, o0<? super fi> o0Var);

    void zzb(String str, String str2, @Nullable String str3);

    boolean zzb(boolean z, int i2);

    void zzbq(Context context);

    void zzdc(int i2);

    void zzsq();

    @Nullable
    zzbbu zzxj();

    Activity zzxl();

    com.google.android.gms.ads.internal.b zzxm();

    qw1 zzxo();

    zzawv zzxp();

    void zzyr();

    void zzys();

    Context zzyt();

    zze zzyu();

    zze zzyv();

    uj zzyw();

    String zzyx();

    @Nullable
    oj zzyy();

    WebViewClient zzyz();

    boolean zzza();

    t11 zzzb();

    @Nullable
    IObjectWrapper zzzc();

    boolean zzzd();

    void zzze();

    boolean zzzf();

    boolean zzzg();

    void zzzh();

    void zzzi();

    g zzzj();

    void zzzk();

    void zzzl();

    nr1 zzzm();

    boolean zzzn();

    qr1 zzzo();

    boolean zzzp();
}
