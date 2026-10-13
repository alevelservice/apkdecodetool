.class final Lcom/google/android/gms/internal/ads/ky0;
.super Lcom/google/android/gms/internal/ads/hy0;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/hy0<",
        "TI;TO;",
        "Lcom/google/android/gms/internal/ads/qy0<",
        "-TI;+TO;>;",
        "Lcom/google/android/gms/internal/ads/qz0<",
        "+TO;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "+TI;>;",
            "Lcom/google/android/gms/internal/ads/qy0<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/hy0;-><init>(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/qy0;

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/qy0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 3
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/uw0;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method final synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/qz0;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fy0;->a(Lcom/google/android/gms/internal/ads/qz0;)Z

    return-void
.end method
