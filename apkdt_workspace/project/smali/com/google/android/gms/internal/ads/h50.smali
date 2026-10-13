.class final Lcom/google/android/gms/internal/ads/h50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/m;
.implements Lcom/google/android/gms/ads/internal/overlay/p;
.implements Lcom/google/android/gms/internal/ads/x;
.implements Lcom/google/android/gms/internal/ads/z;
.implements Lcom/google/android/gms/internal/ads/st1;


# instance fields
.field private e:Lcom/google/android/gms/internal/ads/st1;

.field private f:Lcom/google/android/gms/internal/ads/x;

.field private g:Lcom/google/android/gms/ads/internal/overlay/m;

.field private h:Lcom/google/android/gms/internal/ads/z;

.field private i:Lcom/google/android/gms/ads/internal/overlay/p;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/d50;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/h50;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/h50;Lcom/google/android/gms/internal/ads/st1;Lcom/google/android/gms/internal/ads/x;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/ads/internal/overlay/p;)V
    .locals 0

    .line 10
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/h50;->a(Lcom/google/android/gms/internal/ads/st1;Lcom/google/android/gms/internal/ads/x;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/ads/internal/overlay/p;)V

    return-void
.end method

.method private final declared-synchronized a(Lcom/google/android/gms/internal/ads/st1;Lcom/google/android/gms/internal/ads/x;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/ads/internal/overlay/p;)V
    .locals 0

    monitor-enter p0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h50;->e:Lcom/google/android/gms/internal/ads/st1;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/h50;->f:Lcom/google/android/gms/internal/ads/x;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/h50;->g:Lcom/google/android/gms/ads/internal/overlay/m;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/h50;->h:Lcom/google/android/gms/internal/ads/z;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/h50;->i:Lcom/google/android/gms/ads/internal/overlay/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->g:Lcom/google/android/gms/ads/internal/overlay/m;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->g:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/m;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->g:Lcom/google/android/gms/ads/internal/overlay/m;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->g:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/m;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->i:Lcom/google/android/gms/ads/internal/overlay/p;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->i:Lcom/google/android/gms/ads/internal/overlay/p;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/p;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAdClicked()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->e:Lcom/google/android/gms/internal/ads/st1;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->e:Lcom/google/android/gms/internal/ads/st1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/st1;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->h:Lcom/google/android/gms/internal/ads/z;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->h:Lcom/google/android/gms/internal/ads/z;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/z;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPause()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->g:Lcom/google/android/gms/ads/internal/overlay/m;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->g:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/m;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onResume()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->g:Lcom/google/android/gms/ads/internal/overlay/m;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->g:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/m;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->f:Lcom/google/android/gms/internal/ads/x;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->f:Lcom/google/android/gms/internal/ads/x;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/x;->zza(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
