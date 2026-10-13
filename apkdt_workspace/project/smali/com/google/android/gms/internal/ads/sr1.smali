.class public final Lcom/google/android/gms/internal/ads/sr1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/google/android/gms/internal/ads/wr1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private d:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/ads/zzrm;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/rr1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/rr1;-><init>(Lcom/google/android/gms/internal/ads/sr1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sr1;->a:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sr1;->b:Ljava/lang/Object;

    return-void
.end method

.method private final declared-synchronized a(Lcom/google/android/gms/common/internal/BaseGmsClient$a;Lcom/google/android/gms/common/internal/BaseGmsClient$b;)Lcom/google/android/gms/internal/ads/wr1;
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 32
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/wr1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr1;->d:Landroid/content/Context;

    .line 33
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->q()Lcom/google/android/gms/internal/ads/rc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/rc;->b()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/wr1;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$a;Lcom/google/android/gms/common/internal/BaseGmsClient$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/sr1;Lcom/google/android/gms/internal/ads/wr1;)Lcom/google/android/gms/internal/ads/wr1;
    .locals 0

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sr1;->c:Lcom/google/android/gms/internal/ads/wr1;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/sr1;Lcom/google/android/gms/internal/ads/zzrm;)Lcom/google/android/gms/internal/ads/zzrm;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sr1;->e:Lcom/google/android/gms/internal/ads/zzrm;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/sr1;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sr1;->c()V

    return-void
.end method

.method private final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sr1;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr1;->d:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr1;->c:Lcom/google/android/gms/internal/ads/wr1;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/tr1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/tr1;-><init>(Lcom/google/android/gms/internal/ads/sr1;)V

    .line 4
    new-instance v2, Lcom/google/android/gms/internal/ads/vr1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/vr1;-><init>(Lcom/google/android/gms/internal/ads/sr1;)V

    .line 5
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/sr1;->a(Lcom/google/android/gms/common/internal/BaseGmsClient$a;Lcom/google/android/gms/common/internal/BaseGmsClient$b;)Lcom/google/android/gms/internal/ads/wr1;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/sr1;->c:Lcom/google/android/gms/internal/ads/wr1;

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr1;->c:Lcom/google/android/gms/internal/ads/wr1;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->k()V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/sr1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sr1;->b()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/sr1;)Ljava/lang/Object;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/sr1;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sr1;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr1;->c:Lcom/google/android/gms/internal/ads/wr1;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr1;->c:Lcom/google/android/gms/internal/ads/wr1;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->f()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr1;->c:Lcom/google/android/gms/internal/ads/wr1;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr1;->c:Lcom/google/android/gms/internal/ads/wr1;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()V

    :cond_2
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/sr1;->c:Lcom/google/android/gms/internal/ads/wr1;

    .line 7
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/sr1;->e:Lcom/google/android/gms/internal/ads/zzrm;

    .line 8
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/sr1;)Lcom/google/android/gms/internal/ads/wr1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/sr1;->c:Lcom/google/android/gms/internal/ads/wr1;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzrl;)Lcom/google/android/gms/internal/ads/zzrg;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sr1;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr1;->e:Lcom/google/android/gms/internal/ads/zzrm;

    if-nez v1, :cond_0

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzrg;-><init>()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 28
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr1;->e:Lcom/google/android/gms/internal/ads/zzrm;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzrm;->zza(Lcom/google/android/gms/internal/ads/zzrl;)Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Unable to call into cache service."

    .line 29
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzrg;-><init>()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a()V
    .locals 5

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->m2:Lcom/google/android/gms/internal/ads/pv1;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sr1;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sr1;->b()V

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    sget-object v1, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sr1;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    sget-object v1, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sr1;->a:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/aw1;->n2:Lcom/google/android/gms/internal/ads/pv1;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sr1;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr1;->d:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sr1;->d:Landroid/content/Context;

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/aw1;->l2:Lcom/google/android/gms/internal/ads/pv1;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sr1;->b()V

    goto :goto_0

    .line 9
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/aw1;->k2:Lcom/google/android/gms/internal/ads/pv1;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/ur1;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/ur1;-><init>(Lcom/google/android/gms/internal/ads/sr1;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->f()Lcom/google/android/gms/internal/ads/rq1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/rq1;->a(Lcom/google/android/gms/internal/ads/sq1;)V

    .line 14
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
