.class public final Lcom/google/android/gms/internal/ads/br;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "+",
            "Lcom/google/android/gms/internal/ads/sq;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sq;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/br;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "+",
            "Lcom/google/android/gms/internal/ads/sq;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/br;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/ad0;)Lcom/google/android/gms/internal/ads/ad0;
    .locals 2
    .param p0    # Lcom/google/android/gms/internal/ads/ad0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ad0<",
            "+",
            "Lcom/google/android/gms/internal/ads/sq;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/ad0<",
            "Lcom/google/android/gms/internal/ads/br;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zc0;

    sget-object v1, Lcom/google/android/gms/internal/ads/dr;->a:Lcom/google/android/gms/internal/ads/pw0;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zc0;-><init>(Lcom/google/android/gms/internal/ads/ad0;Lcom/google/android/gms/internal/ads/pw0;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/bf0;)Lcom/google/android/gms/internal/ads/ad0;
    .locals 2
    .param p0    # Lcom/google/android/gms/internal/ads/bf0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bf0<",
            "+",
            "Lcom/google/android/gms/internal/ads/sq;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/ad0<",
            "Lcom/google/android/gms/internal/ads/br;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zc0;

    sget-object v1, Lcom/google/android/gms/internal/ads/xq;->a:Lcom/google/android/gms/internal/ads/pw0;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zc0;-><init>(Lcom/google/android/gms/internal/ads/ad0;Lcom/google/android/gms/internal/ads/pw0;)V

    return-object v0
.end method
