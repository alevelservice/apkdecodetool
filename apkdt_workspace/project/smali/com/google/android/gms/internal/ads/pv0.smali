.class final Lcom/google/android/gms/internal/ads/pv0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$a;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$b;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/aw0;

.field private final f:Lcom/google/android/gms/internal/ads/wv0;

.field private final g:Ljava/lang/Object;

.field private h:Z

.field private i:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/wv0;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/wv0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pv0;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pv0;->h:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pv0;->i:Z

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/pv0;->f:Lcom/google/android/gms/internal/ads/wv0;

    .line 6
    new-instance p3, Lcom/google/android/gms/internal/ads/aw0;

    invoke-direct {p3, p1, p2, p0, p0}, Lcom/google/android/gms/internal/ads/aw0;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$a;Lcom/google/android/gms/common/internal/BaseGmsClient$b;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/pv0;->e:Lcom/google/android/gms/internal/ads/aw0;

    return-void
.end method

.method private final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pv0;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pv0;->e:Lcom/google/android/gms/internal/ads/aw0;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pv0;->e:Lcom/google/android/gms/internal/ads/aw0;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pv0;->e:Lcom/google/android/gms/internal/ads/aw0;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()V

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pv0;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/pv0;->h:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/pv0;->h:Z

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pv0;->e:Lcom/google/android/gms/internal/ads/aw0;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->k()V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/pv0;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/pv0;->i:Z

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p1

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pv0;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pv0;->e:Lcom/google/android/gms/internal/ads/aw0;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aw0;->A()Lcom/google/android/gms/internal/ads/zzczc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcyt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pv0;->f:Lcom/google/android/gms/internal/ads/wv0;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/m71;->e()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcyt;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzczc;->zza(Lcom/google/android/gms/internal/ads/zzcyt;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pv0;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pv0;->b()V

    throw v0

    .line 10
    :catch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pv0;->b()V

    .line 11
    :goto_0
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
