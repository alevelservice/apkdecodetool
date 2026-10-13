.class public final Lcom/google/android/gms/internal/ads/tz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jt;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/rt;

.field private final f:Lcom/google/android/gms/internal/ads/ns0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/rt;Lcom/google/android/gms/internal/ads/ns0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tz;->e:Lcom/google/android/gms/internal/ads/rt;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tz;->f:Lcom/google/android/gms/internal/ads/ns0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzape;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onAdClosed()V
    .locals 0

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public final onAdOpened()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->f:Lcom/google/android/gms/internal/ads/ns0;

    iget v0, v0, Lcom/google/android/gms/internal/ads/ns0;->O:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->e:Lcom/google/android/gms/internal/ads/rt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rt;->g()V

    :cond_1
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 0

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 0

    return-void
.end method
