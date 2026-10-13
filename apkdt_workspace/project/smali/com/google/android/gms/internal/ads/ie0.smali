.class final Lcom/google/android/gms/internal/ads/ie0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hz0<",
        "Lcom/google/android/gms/internal/ads/uo;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/de0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/de0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ie0;->a:Lcom/google/android/gms/internal/ads/de0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/uo;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sq;->c()V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ie0;->a:Lcom/google/android/gms/internal/ads/de0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/de0;->a(Lcom/google/android/gms/internal/ads/de0;)Lcom/google/android/gms/internal/ads/mt;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t90;->zzd(Ljava/lang/Throwable;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mt;->onAdFailedToLoad(I)V

    const-string v0, "DelayedBannerAd.onFailure"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ct0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
