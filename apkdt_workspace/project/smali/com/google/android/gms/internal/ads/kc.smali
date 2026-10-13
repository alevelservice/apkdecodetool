.class final Lcom/google/android/gms/internal/ads/kc;
.super Lcom/google/android/gms/internal/ads/bc;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final synthetic t:[B

.field private final synthetic u:Ljava/util/Map;

.field private final synthetic v:Lcom/google/android/gms/internal/ads/kd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gc;ILjava/lang/String;Lcom/google/android/gms/internal/ads/k;Lcom/google/android/gms/internal/ads/iv1;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/kd;)V
    .locals 0

    .line 1
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/kc;->t:[B

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/kc;->u:Ljava/util/Map;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/kc;->v:Lcom/google/android/gms/internal/ads/kd;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/bc;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/k;Lcom/google/android/gms/internal/ads/iv1;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kc;->u:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/uq1;->a()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/kc;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kc;->v:Lcom/google/android/gms/internal/ads/kd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/kd;->a(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/bc;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final g()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kc;->t:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/uq1;->g()[B

    move-result-object v0

    :cond_0
    return-object v0
.end method
