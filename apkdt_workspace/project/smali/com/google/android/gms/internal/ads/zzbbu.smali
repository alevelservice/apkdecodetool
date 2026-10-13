.class public final Lcom/google/android/gms/internal/ads/zzbbu;
.super Lcom/google/android/gms/internal/ads/zzwj;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/tf;

.field private final f:Ljava/lang/Object;

.field private final g:Z

.field private final h:Z

.field private i:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private j:Lcom/google/android/gms/internal/ads/zzwl;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private k:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private l:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private m:F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private n:F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private o:F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private p:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private q:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/tf;FZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwj;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->f:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->l:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->e:Lcom/google/android/gms/internal/ads/tf;

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbbu;->m:F

    .line 6
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzbbu;->g:Z

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbbu;->h:Z

    return-void
.end method

.method private final a(IIZZ)V
    .locals 8

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/yd;->d:Lcom/google/android/gms/internal/ads/tz0;

    new-instance v7, Lcom/google/android/gms/internal/ads/xi;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/xi;-><init>(Lcom/google/android/gms/internal/ads/zzbbu;IIZZ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    :goto_0
    const-string v0, "action"

    .line 2
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/yd;->d:Lcom/google/android/gms/internal/ads/tz0;

    new-instance v0, Lcom/google/android/gms/internal/ads/yi;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/yi;-><init>(Lcom/google/android/gms/internal/ads/zzbbu;Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final getAspectRatio()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->o:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPlaybackState()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->i:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isClickToExpandEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbbu;->isCustomControlsEnabled()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->f:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    .line 4
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isCustomControlsEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->p:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isMuted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->l:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final mute(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "mute"

    goto :goto_0

    :cond_0
    const-string p1, "unmute"

    :goto_0
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbbu;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final pause()V
    .locals 2

    const-string v0, "pause"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbbu;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final play()V
    .locals 2

    const-string v0, "play"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbbu;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    const-string v0, "stop"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbbu;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(FFIZF)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbbu;->m:F

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->n:F

    .line 7
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->l:Z

    .line 8
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbbu;->l:Z

    .line 9
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbbu;->i:I

    .line 10
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbbu;->i:I

    .line 11
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->o:F

    .line 12
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbbu;->o:F

    .line 13
    iget p5, p0, Lcom/google/android/gms/internal/ads/zzbbu;->o:F

    sub-float/2addr p5, v1

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    const v1, 0x38d1b717    # 1.0E-4f

    cmpl-float p5, p5, v1

    if-lez p5, :cond_0

    .line 14
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbbu;->e:Lcom/google/android/gms/internal/ads/tf;

    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/pj;->getView()Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->invalidate()V

    .line 15
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/google/android/gms/internal/ads/zzbbu;->a(IIZZ)V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->j:Lcom/google/android/gms/internal/ads/zzwl;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzaal()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->l:Z

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbbu;->i:I

    const/4 v3, 0x3

    .line 4
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzbbu;->i:I

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0, v2, v3, v1, v1}, Lcom/google/android/gms/internal/ads/zzbbu;->a(IIZZ)V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final synthetic zzb(IIZZ)V
    .locals 6

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbbu;->k:Z

    if-nez v3, :cond_1

    if-ne p2, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz p1, :cond_2

    if-ne p2, v2, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz p1, :cond_3

    const/4 v5, 0x2

    if-ne p2, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-eqz p1, :cond_4

    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    if-eq p3, p4, :cond_5

    const/4 p2, 0x1

    goto :goto_5

    :cond_5
    const/4 p2, 0x0

    .line 11
    :goto_5
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzbbu;->k:Z

    if-nez p3, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_8

    .line 12
    :try_start_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbbu;->j:Lcom/google/android/gms/internal/ads/zzwl;

    if-eqz p3, :cond_8

    .line 13
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbbu;->j:Lcom/google/android/gms/internal/ads/zzwl;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzwl;->onVideoStart()V

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_7

    :cond_8
    :goto_6
    if-eqz v4, :cond_9

    .line 14
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbbu;->j:Lcom/google/android/gms/internal/ads/zzwl;

    if-eqz p3, :cond_9

    .line 15
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbbu;->j:Lcom/google/android/gms/internal/ads/zzwl;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzwl;->onVideoPlay()V

    :cond_9
    if-eqz v5, :cond_a

    .line 16
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbbu;->j:Lcom/google/android/gms/internal/ads/zzwl;

    if-eqz p3, :cond_a

    .line 17
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbbu;->j:Lcom/google/android/gms/internal/ads/zzwl;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzwl;->onVideoPause()V

    :cond_a
    if-eqz p1, :cond_c

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->j:Lcom/google/android/gms/internal/ads/zzwl;

    if-eqz p1, :cond_b

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->j:Lcom/google/android/gms/internal/ads/zzwl;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwl;->onVideoEnd()V

    .line 20
    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->e:Lcom/google/android/gms/internal/ads/tf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/tf;->zzxs()V

    :cond_c
    if-eqz p2, :cond_d

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->j:Lcom/google/android/gms/internal/ads/zzwl;

    if-eqz p1, :cond_d

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->j:Lcom/google/android/gms/internal/ads/zzwl;

    invoke-interface {p1, p4}, Lcom/google/android/gms/internal/ads/zzwl;->onVideoMute(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :goto_7
    :try_start_2
    const-string p2, "#007 Could not call remote method."

    .line 23
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :cond_d
    :goto_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzyc;)V
    .locals 8

    .line 1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzyc;->e:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzyc;->f:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzyc;->g:Z

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbbu;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->p:Z

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->q:Z

    .line 5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    move-object v3, v0

    if-eqz v1, :cond_1

    const-string v0, "1"

    goto :goto_1

    :cond_1
    const-string v0, "0"

    :goto_1
    move-object v5, v0

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_2

    :cond_2
    const-string p1, "0"

    :goto_2
    move-object v7, p1

    const-string v2, "muteStart"

    const-string v4, "customControlsRequested"

    const-string v6, "clickToExpandRequested"

    .line 6
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/common/util/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "initialState"

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbbu;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zze(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->n:F

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final synthetic zzj(Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->e:Lcom/google/android/gms/internal/ads/tf;

    const-string v1, "pubVideoCmd"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/p1;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzot()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->m:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzou()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->n:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzov()Lcom/google/android/gms/internal/ads/zzwl;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbu;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->j:Lcom/google/android/gms/internal/ads/zzwl;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
