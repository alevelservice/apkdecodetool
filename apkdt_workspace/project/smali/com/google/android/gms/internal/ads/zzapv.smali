.class public final Lcom/google/android/gms/internal/ads/zzapv;
.super Lcom/google/android/gms/internal/ads/zzapr;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private e:Lcom/google/android/gms/ads/o/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/o/c;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/o/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapr;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapv;->e:Lcom/google/android/gms/ads/o/c;

    return-void
.end method


# virtual methods
.method public final getRewardedVideoAdListener()Lcom/google/android/gms/ads/o/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->e:Lcom/google/android/gms/ads/o/c;

    return-object v0
.end method

.method public final onRewardedVideoAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->e:Lcom/google/android/gms/ads/o/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/o/c;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoAdFailedToLoad(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->e:Lcom/google/android/gms/ads/o/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/o/c;->onRewardedVideoAdFailedToLoad(I)V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoAdLeftApplication()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->e:Lcom/google/android/gms/ads/o/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/o/c;->onRewardedVideoAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoAdLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->e:Lcom/google/android/gms/ads/o/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/o/c;->onRewardedVideoAdLoaded()V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoAdOpened()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->e:Lcom/google/android/gms/ads/o/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/o/c;->onRewardedVideoAdOpened()V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->e:Lcom/google/android/gms/ads/o/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/o/c;->onRewardedVideoCompleted()V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->e:Lcom/google/android/gms/ads/o/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/o/c;->onRewardedVideoStarted()V

    :cond_0
    return-void
.end method

.method public final setRewardedVideoAdListener(Lcom/google/android/gms/ads/o/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapv;->e:Lcom/google/android/gms/ads/o/c;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzape;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapv;->e:Lcom/google/android/gms/ads/o/c;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/b8;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/b8;-><init>(Lcom/google/android/gms/internal/ads/zzape;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/o/c;->a(Lcom/google/android/gms/ads/o/b;)V

    :cond_0
    return-void
.end method
