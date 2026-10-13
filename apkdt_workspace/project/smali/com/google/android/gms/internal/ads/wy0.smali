.class final Lcom/google/android/gms/internal/ads/wy0;
.super Lcom/google/android/gms/internal/ads/vy0;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/vy0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzgqs:Lcom/google/android/gms/internal/ads/ty0;

.field private final zzgqt:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ty0;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wy0;->zzgqs:Lcom/google/android/gms/internal/ads/ty0;

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/vy0;-><init>(Lcom/google/android/gms/internal/ads/ty0;Ljava/util/concurrent/Executor;)V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/uw0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wy0;->zzgqt:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method final setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wy0;->zzgqs:Lcom/google/android/gms/internal/ads/ty0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fy0;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzapb()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/vy0;->zzgqr:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wy0;->zzgqt:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzapc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wy0;->zzgqt:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
