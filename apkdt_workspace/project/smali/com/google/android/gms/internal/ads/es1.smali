.class final Lcom/google/android/gms/internal/ads/es1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$a;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/ads/zzrl;

.field private final synthetic f:Lcom/google/android/gms/internal/ads/he;

.field final synthetic g:Lcom/google/android/gms/internal/ads/cs1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cs1;Lcom/google/android/gms/internal/ads/zzrl;Lcom/google/android/gms/internal/ads/he;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/es1;->g:Lcom/google/android/gms/internal/ads/cs1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/es1;->e:Lcom/google/android/gms/internal/ads/zzrl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/es1;->f:Lcom/google/android/gms/internal/ads/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/es1;->g:Lcom/google/android/gms/internal/ads/cs1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cs1;->b(Lcom/google/android/gms/internal/ads/cs1;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/es1;->g:Lcom/google/android/gms/internal/ads/cs1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cs1;->c(Lcom/google/android/gms/internal/ads/cs1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p1

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/es1;->g:Lcom/google/android/gms/internal/ads/cs1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cs1;->a(Lcom/google/android/gms/internal/ads/cs1;Z)Z

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/es1;->g:Lcom/google/android/gms/internal/ads/cs1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cs1;->d(Lcom/google/android/gms/internal/ads/cs1;)Lcom/google/android/gms/internal/ads/wr1;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    monitor-exit p1

    return-void

    .line 7
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/yd;->a:Lcom/google/android/gms/internal/ads/tz0;

    new-instance v2, Lcom/google/android/gms/internal/ads/ds1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/es1;->e:Lcom/google/android/gms/internal/ads/zzrl;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/es1;->f:Lcom/google/android/gms/internal/ads/he;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/google/android/gms/internal/ads/ds1;-><init>(Lcom/google/android/gms/internal/ads/es1;Lcom/google/android/gms/internal/ads/wr1;Lcom/google/android/gms/internal/ads/zzrl;Lcom/google/android/gms/internal/ads/he;)V

    .line 8
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/tz0;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/es1;->f:Lcom/google/android/gms/internal/ads/he;

    new-instance v2, Lcom/google/android/gms/internal/ads/gs1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/es1;->f:Lcom/google/android/gms/internal/ads/he;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/gs1;-><init>(Lcom/google/android/gms/internal/ads/he;Ljava/util/concurrent/Future;)V

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/he;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 12
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
