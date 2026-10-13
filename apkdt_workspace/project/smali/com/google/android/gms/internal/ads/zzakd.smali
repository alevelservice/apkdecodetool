.class public final Lcom/google/android/gms/internal/ads/zzakd;
.super Lcom/google/android/gms/internal/ads/zzajm;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/mediation/a;

.field private final f:Lcom/google/android/gms/internal/ads/zzapz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/mediation/a;Lcom/google/android/gms/internal/ads/zzapz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajm;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->e:Lcom/google/android/gms/ads/mediation/a;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakd;->f:Lcom/google/android/gms/internal/ads/zzapz;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->f:Lcom/google/android/gms/internal/ads/zzapz;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->e:Lcom/google/android/gms/ads/mediation/a;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzapz;->zzan(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_0
    return-void
.end method

.method public final onAdClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->f:Lcom/google/android/gms/internal/ads/zzapz;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->e:Lcom/google/android/gms/ads/mediation/a;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzapz;->zzam(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_0
    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->f:Lcom/google/android/gms/internal/ads/zzapz;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->e:Lcom/google/android/gms/ads/mediation/a;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzapz;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V

    :cond_0
    return-void
.end method

.method public final onAdImpression()V
    .locals 0

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->f:Lcom/google/android/gms/internal/ads/zzapz;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->e:Lcom/google/android/gms/ads/mediation/a;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzapz;->zzaj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_0
    return-void
.end method

.method public final onAdOpened()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->f:Lcom/google/android/gms/internal/ads/zzapz;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->e:Lcom/google/android/gms/ads/mediation/a;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzapz;->zzak(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_0
    return-void
.end method

.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onVideoEnd()V
    .locals 0

    return-void
.end method

.method public final onVideoPause()V
    .locals 0

    return-void
.end method

.method public final onVideoPlay()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzabo;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzajo;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaqf;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->f:Lcom/google/android/gms/internal/ads/zzapz;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->e:Lcom/google/android/gms/ads/mediation/a;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaqd;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqf;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqf;->getAmount()I

    move-result p1

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzaqd;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzapz;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaqd;)V

    :cond_0
    return-void
.end method

.method public final zzb(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaqd;)V
    .locals 0

    return-void
.end method

.method public final zzcm(I)V
    .locals 0

    return-void
.end method

.method public final zzde(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzrs()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->f:Lcom/google/android/gms/internal/ads/zzapz;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->e:Lcom/google/android/gms/ads/mediation/a;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzapz;->zzal(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_0
    return-void
.end method

.method public final zzrt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->f:Lcom/google/android/gms/internal/ads/zzapz;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->e:Lcom/google/android/gms/ads/mediation/a;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzapz;->zzap(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_0
    return-void
.end method
