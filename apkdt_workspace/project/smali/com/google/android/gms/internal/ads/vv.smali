.class public final Lcom/google/android/gms/internal/ads/vv;
.super Lcom/google/android/gms/internal/ads/cw;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/cw<",
        "Lcom/google/android/gms/internal/ads/wv;",
        ">;",
        "Lcom/google/android/gms/internal/ads/wv;"
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
            "Lcom/google/android/gms/internal/ads/wv;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cw;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/uv;->a:Lcom/google/android/gms/internal/ads/ew;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cw;->a(Lcom/google/android/gms/internal/ads/ew;)V

    return-void
.end method
