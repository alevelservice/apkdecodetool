.class final Lcom/google/android/gms/internal/ads/ry0;
.super Lcom/google/android/gms/internal/ads/py0;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/py0<",
        "TV;",
        "Ljava/util/List<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ex0;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ex0<",
            "+",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/py0;-><init>()V

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/ads/uy0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/gms/internal/ads/uy0;-><init>(Lcom/google/android/gms/internal/ads/ry0;Lcom/google/android/gms/internal/ads/ex0;Z)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/ly0;->a(Lcom/google/android/gms/internal/ads/ly0$a;)V

    return-void
.end method
