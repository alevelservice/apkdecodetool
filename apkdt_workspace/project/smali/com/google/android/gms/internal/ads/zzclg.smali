.class public final Lcom/google/android/gms/internal/ads/zzclg;
.super Lcom/google/android/gms/internal/ads/zzvd;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/ads/zzur;

.field private final g:Lcom/google/android/gms/internal/ads/ws0;

.field private final h:Lcom/google/android/gms/internal/ads/uo;

.field private final i:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/ws0;Lcom/google/android/gms/internal/ads/uo;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzur;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvd;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclg;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclg;->f:Lcom/google/android/gms/internal/ads/zzur;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclg;->g:Lcom/google/android/gms/internal/ads/ws0;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzclg;->h:Lcom/google/android/gms/internal/ads/uo;

    .line 6
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclg;->e:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclg;->h:Lcom/google/android/gms/internal/ads/uo;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/uo;->h()Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->e()Lcom/google/android/gms/internal/ads/db;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/db;->b()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzclg;->zzjo()Lcom/google/android/gms/internal/ads/zztw;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zztw;->g:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzclg;->zzjo()Lcom/google/android/gms/internal/ads/zztw;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zztw;->j:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclg;->i:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->h:Lcom/google/android/gms/internal/ads/uo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->a()V

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAdMetadata is not supported in Publisher AdView returned by AdLoader."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->g:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ws0;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->h:Lcom/google/android/gms/internal/ads/uo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzwk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->h:Lcom/google/android/gms/internal/ads/uo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uo;->f()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v0

    return-object v0
.end method

.method public final isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .locals 2

    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->h:Lcom/google/android/gms/internal/ads/uo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->d()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yt;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final resume()V
    .locals 2

    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->h:Lcom/google/android/gms/internal/ads/uo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->d()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yt;->b(Landroid/content/Context;)V

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 0

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 0

    const-string p1, "setManualImpressionsEnabled is not supported in Publisher AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final showInterstitial()V
    .locals 0

    return-void
.end method

.method public final stopLoading()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzand;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzanj;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzapo;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqu;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zztw;)V
    .locals 2

    const-string v0, "setAdSize must be called on the main UI thread."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->h:Lcom/google/android/gms/internal/ads/uo;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclg;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/uo;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zztw;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zztx;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzuq;)V
    .locals 0

    const-string p1, "setAdClickListener is not supported in Publisher AdView returned by AdLoader."

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzur;)V
    .locals 0

    const-string p1, "setAdListener is not supported in Publisher AdView returned by AdLoader."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0

    const-string p1, "setAdMetadataListener is not supported in Publisher AdView returned by AdLoader."

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvm;)V
    .locals 0

    const-string p1, "setAppEventListener is not supported in Publisher AdView returned by AdLoader."

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvs;)V
    .locals 0

    const-string p1, "setCorrelationIdProvider is not supported in Publisher AdView returned by AdLoader."

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwq;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyc;)V
    .locals 0

    const-string p1, "setVideoOptions is not supported in Publisher AdView returned by AdLoader."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzzn;)V
    .locals 0

    const-string p1, "setOnCustomRenderedAdLoadedListener is not supported in Publisher AdView returned by AdLoader."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zztp;)Z
    .locals 0

    const-string p1, "loadAd is not supported for a Publisher AdView returned from AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final zzbm(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzjm()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->i:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzjn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->h:Lcom/google/android/gms/internal/ads/uo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uo;->j()V

    return-void
.end method

.method public final zzjo()Lcom/google/android/gms/internal/ads/zztw;
    .locals 2

    const-string v0, "getAdSize must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclg;->h:Lcom/google/android/gms/internal/ads/uo;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/uo;->g()Lcom/google/android/gms/internal/ads/ms0;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/at0;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v0

    return-object v0
.end method

.method public final zzjp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->h:Lcom/google/android/gms/internal/ads/uo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzjq()Lcom/google/android/gms/internal/ads/zzvm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->g:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ws0;->m:Lcom/google/android/gms/internal/ads/zzvm;

    return-object v0
.end method

.method public final zzjr()Lcom/google/android/gms/internal/ads/zzur;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->f:Lcom/google/android/gms/internal/ads/zzur;

    return-object v0
.end method
