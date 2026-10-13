.class final Lcom/google/android/gms/internal/ads/ty0;
.super Lcom/google/android/gms/internal/ads/ly0;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/ly0<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ex0;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ex0<",
            "+",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ly0;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/yy0;

    new-instance v1, Lcom/google/android/gms/internal/ads/wy0;

    invoke-direct {v1, p0, p4, p3}, Lcom/google/android/gms/internal/ads/wy0;-><init>(Lcom/google/android/gms/internal/ads/ty0;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/yy0;-><init>(Lcom/google/android/gms/internal/ads/ty0;Lcom/google/android/gms/internal/ads/ex0;ZLcom/google/android/gms/internal/ads/vy0;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ly0;->a(Lcom/google/android/gms/internal/ads/ly0$a;)V

    return-void
.end method
