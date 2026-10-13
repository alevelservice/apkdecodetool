.class public final Lcom/google/android/gms/internal/ads/zztl;
.super Lcom/google/android/gms/internal/ads/zzuu;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztl;->e:Lcom/google/android/gms/ads/b;

    return-void
.end method


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->e:Lcom/google/android/gms/ads/b;

    return-object v0
.end method

.method public final onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->e:Lcom/google/android/gms/ads/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->onAdClicked()V

    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->e:Lcom/google/android/gms/ads/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->a()V

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->e:Lcom/google/android/gms/ads/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/b;->a(I)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->e:Lcom/google/android/gms/ads/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->b()V

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->e:Lcom/google/android/gms/ads/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->c()V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->e:Lcom/google/android/gms/ads/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->d()V

    return-void
.end method

.method public final onAdOpened()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->e:Lcom/google/android/gms/ads/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->e()V

    return-void
.end method
