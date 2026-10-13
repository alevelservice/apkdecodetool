.class final Lcom/google/android/gms/internal/ads/ph0;
.super Lcom/google/android/gms/internal/ads/yo;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oh0;Landroid/view/View;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/pq;Lcom/google/android/gms/internal/ads/ms0;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p2, p1, p4, p5}, Lcom/google/android/gms/internal/ads/yo;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/pq;Lcom/google/android/gms/internal/ads/ms0;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/pu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ox<",
            "Lcom/google/android/gms/internal/ads/qu;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/pu;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/pu;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/pu;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
