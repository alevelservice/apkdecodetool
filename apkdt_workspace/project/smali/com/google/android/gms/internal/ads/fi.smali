.class public interface abstract Lcom/google/android/gms/internal/ads/fi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/i;
.implements Lcom/google/android/gms/internal/ads/p1;
.implements Lcom/google/android/gms/internal/ads/r2;
.implements Lcom/google/android/gms/internal/ads/tf;
.implements Lcom/google/android/gms/internal/ads/ej;
.implements Lcom/google/android/gms/internal/ads/fj;
.implements Lcom/google/android/gms/internal/ads/ij;
.implements Lcom/google/android/gms/internal/ads/mj;
.implements Lcom/google/android/gms/internal/ads/nj;
.implements Lcom/google/android/gms/internal/ads/pj;
.implements Lcom/google/android/gms/internal/ads/fq1;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.end method

.method public abstract getLocationOnScreen([I)V
.end method

.method public abstract getParent()Landroid/view/ViewParent;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getWebView()Landroid/webkit/WebView;
.end method

.method public abstract getWidth()I
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract measure(II)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setBackgroundColor(I)V
.end method

.method public abstract setOnClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnTouchListener(Landroid/view/View$OnTouchListener;)V
.end method

.method public abstract setRequestedOrientation(I)V
.end method

.method public abstract setWebChromeClient(Landroid/webkit/WebChromeClient;)V
.end method

.method public abstract setWebViewClient(Landroid/webkit/WebViewClient;)V
.end method

.method public abstract zza(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract zza(Lcom/google/android/gms/ads/internal/overlay/zze;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/d;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/g;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/nr1;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/uj;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/zzbbu;)V
.end method

.method public abstract zza(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/p<",
            "Lcom/google/android/gms/internal/ads/o0<",
            "-",
            "Lcom/google/android/gms/internal/ads/fi;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/jh;)V
.end method

.method public abstract zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/o0<",
            "-",
            "Lcom/google/android/gms/internal/ads/fi;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract zzae(Z)V
.end method

.method public abstract zzaq(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
.end method

.method public abstract zzaq(Z)V
.end method

.method public abstract zzar(Z)V
.end method

.method public abstract zzas(Z)V
.end method

.method public abstract zzat(Z)V
.end method

.method public abstract zzb(Lcom/google/android/gms/ads/internal/overlay/zze;)V
.end method

.method public abstract zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/o0<",
            "-",
            "Lcom/google/android/gms/internal/ads/fi;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract zzb(ZI)Z
.end method

.method public abstract zzbq(Landroid/content/Context;)V
.end method

.method public abstract zzdc(I)V
.end method

.method public abstract zzsq()V
.end method

.method public abstract zzxj()Lcom/google/android/gms/internal/ads/zzbbu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzxl()Landroid/app/Activity;
.end method

.method public abstract zzxm()Lcom/google/android/gms/ads/internal/b;
.end method

.method public abstract zzxo()Lcom/google/android/gms/internal/ads/qw1;
.end method

.method public abstract zzxp()Lcom/google/android/gms/internal/ads/zzawv;
.end method

.method public abstract zzyr()V
.end method

.method public abstract zzys()V
.end method

.method public abstract zzyt()Landroid/content/Context;
.end method

.method public abstract zzyu()Lcom/google/android/gms/ads/internal/overlay/zze;
.end method

.method public abstract zzyv()Lcom/google/android/gms/ads/internal/overlay/zze;
.end method

.method public abstract zzyw()Lcom/google/android/gms/internal/ads/uj;
.end method

.method public abstract zzyx()Ljava/lang/String;
.end method

.method public abstract zzyy()Lcom/google/android/gms/internal/ads/oj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzyz()Landroid/webkit/WebViewClient;
.end method

.method public abstract zzza()Z
.end method

.method public abstract zzzb()Lcom/google/android/gms/internal/ads/t11;
.end method

.method public abstract zzzc()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzzd()Z
.end method

.method public abstract zzze()V
.end method

.method public abstract zzzf()Z
.end method

.method public abstract zzzg()Z
.end method

.method public abstract zzzh()V
.end method

.method public abstract zzzi()V
.end method

.method public abstract zzzj()Lcom/google/android/gms/internal/ads/g;
.end method

.method public abstract zzzk()V
.end method

.method public abstract zzzl()V
.end method

.method public abstract zzzm()Lcom/google/android/gms/internal/ads/nr1;
.end method

.method public abstract zzzn()Z
.end method

.method public abstract zzzo()Lcom/google/android/gms/internal/ads/qr1;
.end method

.method public abstract zzzp()Z
.end method
