.class public final Lcom/google/android/gms/internal/ads/zzaqy;
.super Lcom/google/android/gms/internal/ads/zzaqr;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/p/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/p/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqr;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqy;->e:Lcom/google/android/gms/ads/p/d;

    return-void
.end method


# virtual methods
.method public final onRewardedAdFailedToLoad(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->e:Lcom/google/android/gms/ads/p/d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/p/d;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onRewardedAdLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->e:Lcom/google/android/gms/ads/p/d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/p/d;->a()V

    const/4 v0, 0x0

    throw v0
.end method
