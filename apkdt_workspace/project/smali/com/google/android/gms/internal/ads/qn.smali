.class public final Lcom/google/android/gms/internal/ads/qn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/m;
.implements Lcom/google/android/gms/internal/ads/vt;
.implements Lcom/google/android/gms/internal/ads/wt;
.implements Lcom/google/android/gms/internal/ads/fq1;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/hn;

.field private final f:Lcom/google/android/gms/internal/ads/on;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/fi;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/ads/o4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/o4<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Lcom/google/android/gms/common/util/e;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Lcom/google/android/gms/internal/ads/sn;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private m:Z

.field private n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/l4;Lcom/google/android/gms/internal/ads/on;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/hn;Lcom/google/android/gms/common/util/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->g:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/sn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/sn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->l:Lcom/google/android/gms/internal/ads/sn;

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/qn;->m:Z

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->n:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/qn;->e:Lcom/google/android/gms/internal/ads/hn;

    .line 8
    sget-object p4, Lcom/google/android/gms/internal/ads/b4;->b:Lcom/google/android/gms/internal/ads/x3;

    const-string v0, "google.afma.activeView.handleUpdate"

    .line 9
    invoke-virtual {p1, v0, p4, p4}, Lcom/google/android/gms/internal/ads/l4;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;Lcom/google/android/gms/internal/ads/v3;)Lcom/google/android/gms/internal/ads/o4;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qn;->h:Lcom/google/android/gms/internal/ads/o4;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qn;->f:Lcom/google/android/gms/internal/ads/on;

    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qn;->i:Ljava/util/concurrent/Executor;

    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/qn;->j:Lcom/google/android/gms/common/util/e;

    return-void
.end method

.method private final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/fi;

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qn;->e:Lcom/google/android/gms/internal/ads/hn;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/hn;->b(Lcom/google/android/gms/internal/ads/fi;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->e:Lcom/google/android/gms/internal/ads/hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hn;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qn;->l:Lcom/google/android/gms/internal/ads/sn;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/sn;->b:Z

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qn;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/fi;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->e:Lcom/google/android/gms/internal/ads/hn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hn;->a(Lcom/google/android/gms/internal/ads/fi;)V
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

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->n:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qn;->l:Lcom/google/android/gms/internal/ads/sn;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/sn;->b:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qn;->c()V
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

.method public final declared-synchronized c()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qn;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/qn;->m:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 5
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->l:Lcom/google/android/gms/internal/ads/sn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qn;->j:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/sn;->c:J

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->f:Lcom/google/android/gms/internal/ads/on;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qn;->l:Lcom/google/android/gms/internal/ads/sn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/on;->a(Lcom/google/android/gms/internal/ads/sn;)Lorg/json/JSONObject;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qn;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/fi;

    .line 8
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qn;->i:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/ads/pn;

    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/ads/pn;-><init>(Lcom/google/android/gms/internal/ads/fi;Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qn;->h:Lcom/google/android/gms/internal/ads/o4;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/o4;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    const-string v1, "ActiveViewListener.callActiveViewJs"

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/de;->b(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "Failed to call ActiveViewJS"

    .line 12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 14
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qn;->l:Lcom/google/android/gms/internal/ads/sn;

    const-string v0, "u"

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/sn;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qn;->c()V

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qn;->e()V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/qn;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qn;->e()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qn;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAdImpression()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->e:Lcom/google/android/gms/internal/ads/hn;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/hn;->a(Lcom/google/android/gms/internal/ads/qn;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qn;->c()V
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

.method public final declared-synchronized onPause()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->l:Lcom/google/android/gms/internal/ads/sn;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/sn;->b:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qn;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onResume()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->l:Lcom/google/android/gms/internal/ads/sn;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/sn;->b:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qn;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/cq1;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->l:Lcom/google/android/gms/internal/ads/sn;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/cq1;->j:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/sn;->a:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->l:Lcom/google/android/gms/internal/ads/sn;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/sn;->e:Lcom/google/android/gms/internal/ads/cq1;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qn;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
