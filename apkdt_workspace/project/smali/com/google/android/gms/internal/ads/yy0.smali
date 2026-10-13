.class final Lcom/google/android/gms/internal/ads/yy0;
.super Lcom/google/android/gms/internal/ads/ly0$a;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ly0$a;"
    }
.end annotation


# instance fields
.field private m:Lcom/google/android/gms/internal/ads/vy0;

.field private final synthetic n:Lcom/google/android/gms/internal/ads/ty0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ty0;Lcom/google/android/gms/internal/ads/ex0;ZLcom/google/android/gms/internal/ads/vy0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ex0<",
            "+",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "*>;>;Z",
            "Lcom/google/android/gms/internal/ads/vy0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yy0;->n:Lcom/google/android/gms/internal/ads/ty0;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/ly0$a;-><init>(Lcom/google/android/gms/internal/ads/ly0;Lcom/google/android/gms/internal/ads/ex0;ZZ)V

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/yy0;->m:Lcom/google/android/gms/internal/ads/vy0;

    return-void
.end method


# virtual methods
.method final a(ZILjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yy0;->m:Lcom/google/android/gms/internal/ads/vy0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pz0;->interruptTask()V

    :cond_0
    return-void
.end method

.method final d()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/ly0$a;->d()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yy0;->m:Lcom/google/android/gms/internal/ads/vy0;

    return-void
.end method

.method final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yy0;->m:Lcom/google/android/gms/internal/ads/vy0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vy0;->execute()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yy0;->n:Lcom/google/android/gms/internal/ads/ty0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fy0;->isDone()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uw0;->a(Z)V

    return-void
.end method
