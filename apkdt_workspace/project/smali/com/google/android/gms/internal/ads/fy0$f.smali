.class final Lcom/google/android/gms/internal/ads/fy0$f;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/fy0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final e:Lcom/google/android/gms/internal/ads/fy0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/fy0<",
            "TV;>;"
        }
    .end annotation
.end field

.field final f:Lcom/google/android/gms/internal/ads/qz0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/qz0<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/fy0;Lcom/google/android/gms/internal/ads/qz0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/fy0<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fy0$f;->e:Lcom/google/android/gms/internal/ads/fy0;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fy0$f;->f:Lcom/google/android/gms/internal/ads/qz0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0$f;->e:Lcom/google/android/gms/internal/ads/fy0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fy0;->b(Lcom/google/android/gms/internal/ads/fy0;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0$f;->f:Lcom/google/android/gms/internal/ads/qz0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fy0;->c(Lcom/google/android/gms/internal/ads/qz0;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/fy0;->e()Lcom/google/android/gms/internal/ads/fy0$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fy0$f;->e:Lcom/google/android/gms/internal/ads/fy0;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/android/gms/internal/ads/fy0$b;->a(Lcom/google/android/gms/internal/ads/fy0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0$f;->e:Lcom/google/android/gms/internal/ads/fy0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fy0;->c(Lcom/google/android/gms/internal/ads/fy0;)V

    :cond_1
    return-void
.end method
