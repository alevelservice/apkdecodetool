.class public final Lcom/google/android/gms/internal/ads/zzclo;
.super Lcom/google/android/gms/internal/ads/zzvd;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ov;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/mk;

.field private final f:Landroid/content/Context;

.field private final g:Landroid/view/ViewGroup;

.field private final h:Lcom/google/android/gms/internal/ads/zi0;

.field private final i:Lcom/google/android/gms/internal/ads/wi0;

.field private final j:Lcom/google/android/gms/internal/ads/yi0;

.field private final k:Lcom/google/android/gms/internal/ads/kv;

.field private final l:Lcom/google/android/gms/internal/ads/ys0;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private m:Lcom/google/android/gms/internal/ads/zzzn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private n:Lcom/google/android/gms/internal/ads/uo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private o:Lcom/google/android/gms/internal/ads/qz0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/uo;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/mk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvd;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zi0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zi0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->h:Lcom/google/android/gms/internal/ads/zi0;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/wi0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/wi0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->i:Lcom/google/android/gms/internal/ads/wi0;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/yi0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yi0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->j:Lcom/google/android/gms/internal/ads/yi0;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/ys0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ys0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->l:Lcom/google/android/gms/internal/ads/ys0;

    .line 6
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->g:Landroid/view/ViewGroup;

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclo;->e:Lcom/google/android/gms/internal/ads/mk;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclo;->f:Landroid/content/Context;

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclo;->l:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/zztw;)Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/ys0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ys0;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/mk;->e()Lcom/google/android/gms/internal/ads/kv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclo;->k:Lcom/google/android/gms/internal/ads/kv;

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclo;->k:Lcom/google/android/gms/internal/ads/kv;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclo;->e:Lcom/google/android/gms/internal/ads/mk;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/ads/cw;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private final declared-synchronized a(Lcom/google/android/gms/internal/ads/ws0;)Lcom/google/android/gms/internal/ads/qp;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->e:Lcom/google/android/gms/internal/ads/mk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mk;->h()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ws$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ws$a;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclo;->f:Landroid/content/Context;

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ws$a;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ws$a;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/ws$a;->a(Lcom/google/android/gms/internal/ads/ws0;)Lcom/google/android/gms/internal/ads/ws$a;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws$a;->a()Lcom/google/android/gms/internal/ads/ws;

    move-result-object p1

    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/tp;->b(Lcom/google/android/gms/internal/ads/ws;)Lcom/google/android/gms/internal/ads/tp;

    new-instance p1, Lcom/google/android/gms/internal/ads/hw$a;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/hw$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclo;->h:Lcom/google/android/gms/internal/ads/zi0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclo;->e:Lcom/google/android/gms/internal/ads/mk;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/st1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclo;->i:Lcom/google/android/gms/internal/ads/wi0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclo;->e:Lcom/google/android/gms/internal/ads/mk;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/st1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclo;->h:Lcom/google/android/gms/internal/ads/zi0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclo;->e:Lcom/google/android/gms/internal/ads/mk;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/jt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclo;->h:Lcom/google/android/gms/internal/ads/zi0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclo;->e:Lcom/google/android/gms/internal/ads/mk;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/qu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclo;->h:Lcom/google/android/gms/internal/ads/zi0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclo;->e:Lcom/google/android/gms/internal/ads/mk;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/ot;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclo;->j:Lcom/google/android/gms/internal/ads/yi0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclo;->e:Lcom/google/android/gms/internal/ads/mk;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/ads/doubleclick/a;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hw$a;->a()Lcom/google/android/gms/internal/ads/hw;

    move-result-object p1

    .line 13
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/tp;->e(Lcom/google/android/gms/internal/ads/hw;)Lcom/google/android/gms/internal/ads/tp;

    new-instance p1, Lcom/google/android/gms/internal/ads/ai0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclo;->m:Lcom/google/android/gms/internal/ads/zzzn;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/ai0;-><init>(Lcom/google/android/gms/internal/ads/zzzn;)V

    .line 14
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/tp;->a(Lcom/google/android/gms/internal/ads/ai0;)Lcom/google/android/gms/internal/ads/tp;

    new-instance p1, Lcom/google/android/gms/internal/ads/b00;

    sget-object v1, Lcom/google/android/gms/internal/ads/x10;->h:Lcom/google/android/gms/internal/ads/x10;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/internal/ads/b00;-><init>(Lcom/google/android/gms/internal/ads/x10;Lcom/google/android/gms/internal/ads/zzur;)V

    .line 15
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/tp;->a(Lcom/google/android/gms/internal/ads/b00;)Lcom/google/android/gms/internal/ads/tp;

    new-instance p1, Lcom/google/android/gms/internal/ads/lq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclo;->k:Lcom/google/android/gms/internal/ads/kv;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/lq;-><init>(Lcom/google/android/gms/internal/ads/kv;)V

    .line 16
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/tp;->a(Lcom/google/android/gms/internal/ads/lq;)Lcom/google/android/gms/internal/ads/tp;

    new-instance p1, Lcom/google/android/gms/internal/ads/qo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclo;->g:Landroid/view/ViewGroup;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/qo;-><init>(Landroid/view/ViewGroup;)V

    .line 17
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/tp;->b(Lcom/google/android/gms/internal/ads/qo;)Lcom/google/android/gms/internal/ads/tp;

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/tp;->e()Lcom/google/android/gms/internal/ads/qp;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzclo;Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 0

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclo;->o:Lcom/google/android/gms/internal/ads/qz0;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzclo;)Lcom/google/android/gms/internal/ads/uo;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzclo;Lcom/google/android/gms/internal/ads/uo;)Lcom/google/android/gms/internal/ads/uo;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzclo;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzclo;->g:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzclo;)Lcom/google/android/gms/internal/ads/kv;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzclo;->k:Lcom/google/android/gms/internal/ads/kv;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->a()V
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

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAdMetadata must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getAdUnitId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->l:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ys0;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getVideoController()Lcom/google/android/gms/internal/ads/zzwk;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "getVideoController must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uo;->f()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->o:Lcom/google/android/gms/internal/ads/qz0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->o:Lcom/google/android/gms/internal/ads/qz0;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->d()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yt;->a(Landroid/content/Context;)V
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

.method public final declared-synchronized resume()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->d()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yt;->b(Landroid/content/Context;)V
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

.method public final setImmersiveMode(Z)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized setManualImpressionsEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->l:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ys0;->a(Z)Lcom/google/android/gms/internal/ads/ys0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final showInterstitial()V
    .locals 0

    return-void
.end method

.method public final stopLoading()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzand;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzanj;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzapo;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqu;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zztw;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "setAdSize must be called on the main UI thread."

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->l:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/zztw;)Lcom/google/android/gms/internal/ads/ys0;

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclo;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/uo;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zztw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zztx;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzuq;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    .line 33
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->i:Lcom/google/android/gms/internal/ads/wi0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wi0;->a(Lcom/google/android/gms/internal/ads/zzuq;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzur;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->h:Lcom/google/android/gms/internal/ads/zi0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zi0;->a(Lcom/google/android/gms/internal/ads/zzur;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0

    const-string p1, "setAdMetadataListener must be called on the main UI thread."

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvm;)V
    .locals 1

    const-string v0, "setAppEventListener must be called on the main UI thread."

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->j:Lcom/google/android/gms/internal/ads/yi0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/yi0;->a(Lcom/google/android/gms/internal/ads/zzvm;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvs;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setCorrelationIdProvider must be called on the main UI thread"

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->l:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/ys0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwq;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzyc;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setVideoOptions must be called on the main UI thread."

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->l:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/zzyc;)Lcom/google/android/gms/internal/ads/ys0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzzn;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclo;->m:Lcom/google/android/gms/internal/ads/zzzn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zztp;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->o:Lcom/google/android/gms/internal/ads/qz0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->f:Landroid/content/Context;

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zztp;->j:Z

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/ct0;->a(Landroid/content/Context;Z)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->l:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/zztp;)Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ys0;->c()Lcom/google/android/gms/internal/ads/ws0;

    move-result-object p1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->R2:Lcom/google/android/gms/internal/ads/pv1;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->l:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ys0;->d()Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zztw;->o:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->h:Lcom/google/android/gms/internal/ads/zi0;

    if-eqz v0, :cond_1

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclo;->h:Lcom/google/android/gms/internal/ads/zi0;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zi0;->onAdFailedToLoad(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return v1

    .line 12
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzclo;->a(Lcom/google/android/gms/internal/ads/ws0;)Lcom/google/android/gms/internal/ads/qp;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qp;->a()Lcom/google/android/gms/internal/ads/rr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rr;->a()Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->o:Lcom/google/android/gms/internal/ads/qz0;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->o:Lcom/google/android/gms/internal/ads/qz0;

    new-instance v1, Lcom/google/android/gms/internal/ads/vi0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/vi0;-><init>(Lcom/google/android/gms/internal/ads/zzclo;Lcom/google/android/gms/internal/ads/qp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclo;->e:Lcom/google/android/gms/internal/ads/mk;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 16
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/hz0;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzafy()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    check-cast v0, Landroid/view/View;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/wa;->a(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->l:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ys0;->a()Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzclo;->zza(Lcom/google/android/gms/internal/ads/zztp;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->k:Lcom/google/android/gms/internal/ads/kv;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/kv;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzbm(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzjm()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->g:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzjn()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "recordManualImpression must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uo;->j()V
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

.method public final declared-synchronized zzjo()Lcom/google/android/gms/internal/ads/zztw;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "getAdSize must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/uo;->g()Lcom/google/android/gms/internal/ads/ms0;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/at0;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 6
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->l:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ys0;->d()Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzjp()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->n:Lcom/google/android/gms/internal/ads/uo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->e()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzjq()Lcom/google/android/gms/internal/ads/zzvm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->j:Lcom/google/android/gms/internal/ads/yi0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yi0;->a()Lcom/google/android/gms/internal/ads/zzvm;

    move-result-object v0

    return-object v0
.end method

.method public final zzjr()Lcom/google/android/gms/internal/ads/zzur;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclo;->h:Lcom/google/android/gms/internal/ads/zi0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zi0;->a()Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v0

    return-object v0
.end method
