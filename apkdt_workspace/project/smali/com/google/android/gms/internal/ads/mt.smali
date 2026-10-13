.class public final Lcom/google/android/gms/internal/ads/mt;
.super Lcom/google/android/gms/internal/ads/cw;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ot;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/cw<",
        "Lcom/google/android/gms/internal/ads/ot;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ot;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ox<",
            "Lcom/google/android/gms/internal/ads/ot;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cw;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/lt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/lt;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cw;->a(Lcom/google/android/gms/internal/ads/ew;)V

    return-void
.end method
