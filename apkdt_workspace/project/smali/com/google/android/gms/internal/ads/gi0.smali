.class final Lcom/google/android/gms/internal/ads/gi0;
.super Lcom/google/android/gms/internal/ads/qy;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ei0;Lcom/google/android/gms/internal/ads/sz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/qy;-><init>(Lcom/google/android/gms/internal/ads/sz;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/tz;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/tz;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ox<",
            "Lcom/google/android/gms/internal/ads/jt;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
