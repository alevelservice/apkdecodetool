.class public final Lcom/google/android/gms/internal/ads/zzaqx;
.super Lcom/google/android/gms/internal/ads/zzaqk;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/p/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/p/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->e:Lcom/google/android/gms/ads/p/c;

    return-void
.end method


# virtual methods
.method public final onRewardedAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->e:Lcom/google/android/gms/ads/p/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/p/c;->a()V

    :cond_0
    return-void
.end method

.method public final onRewardedAdFailedToShow(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->e:Lcom/google/android/gms/ads/p/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/p/c;->a(I)V

    :cond_0
    return-void
.end method

.method public final onRewardedAdOpened()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->e:Lcom/google/android/gms/ads/p/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/p/c;->b()V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaqf;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->e:Lcom/google/android/gms/ads/p/c;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/g8;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/g8;-><init>(Lcom/google/android/gms/internal/ads/zzaqf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/p/c;->a(Lcom/google/android/gms/ads/p/b;)V

    :cond_0
    return-void
.end method
