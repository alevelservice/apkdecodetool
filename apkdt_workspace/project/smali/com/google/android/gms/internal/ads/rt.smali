.class public final Lcom/google/android/gms/internal/ads/rt;
.super Lcom/google/android/gms/internal/ads/cw;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/cw<",
        "Lcom/google/android/gms/internal/ads/wt;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Z


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ox<",
            "Lcom/google/android/gms/internal/ads/wt;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cw;-><init>(Ljava/util/Set;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/rt;->f:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rt;->f:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/ut;->a:Lcom/google/android/gms/internal/ads/ew;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cw;->a(Lcom/google/android/gms/internal/ads/ew;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rt;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
