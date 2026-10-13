.class public final Lcom/google/android/gms/internal/ads/ca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/internal/ads/sa;

.field private final c:Lcom/google/android/gms/internal/ads/ka;

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Lcom/google/android/gms/internal/ads/zzawv;

.field private g:Lcom/google/android/gms/internal/ads/ew1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Lcom/google/android/gms/internal/ads/da;

.field private final k:Ljava/lang/Object;

.field private l:Lcom/google/android/gms/internal/ads/qz0;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "grantedPermissionLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/sa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/sa;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->b:Lcom/google/android/gms/internal/ads/sa;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ka;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ca;->b:Lcom/google/android/gms/internal/ads/sa;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ka;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/pa;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->c:Lcom/google/android/gms/internal/ads/ka;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ca;->d:Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ca;->g:Lcom/google/android/gms/internal/ads/ew1;

    .line 8
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ca;->h:Ljava/lang/Boolean;

    .line 9
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ca;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/da;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/da;-><init>(Lcom/google/android/gms/internal/ads/ea;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->j:Lcom/google/android/gms/internal/ads/da;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->k:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ca;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ca;->e:Landroid/content/Context;

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/o/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/o/b;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x1000

    .line 38
    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/common/o/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 41
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v1

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 42
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ca;)Lcom/google/android/gms/internal/ads/zzawv;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ca;->f:Lcom/google/android/gms/internal/ads/zzawv;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ca;)Ljava/lang/Object;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ca;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/ca;)Lcom/google/android/gms/internal/ads/ew1;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ca;->g:Lcom/google/android/gms/internal/ads/ew1;

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->e:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ca;->d:Z

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ca;->e:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ca;->f:Lcom/google/android/gms/internal/ads/zzawv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->f()Lcom/google/android/gms/internal/ads/rq1;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ca;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/rq1;->a(Lcom/google/android/gms/internal/ads/sq1;)V

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ca;->b:Lcom/google/android/gms/internal/ads/sa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ca;->e:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 12
    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/sa;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ca;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ca;->f:Lcom/google/android/gms/internal/ads/zzawv;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/v6;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)Lcom/google/android/gms/internal/ads/z6;

    .line 14
    new-instance v1, Lcom/google/android/gms/internal/ads/yp1;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ca;->f:Lcom/google/android/gms/internal/ads/zzawv;

    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/internal/ads/yp1;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->l()Lcom/google/android/gms/internal/ads/gw1;

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/aw1;->Q:Lcom/google/android/gms/internal/ads/pv1;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/ew1;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/ew1;-><init>()V

    .line 22
    :goto_0
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/ca;->g:Lcom/google/android/gms/internal/ads/ew1;

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ca;->g:Lcom/google/android/gms/internal/ads/ew1;

    if-eqz v1, :cond_1

    .line 24
    new-instance v1, Lcom/google/android/gms/internal/ads/ea;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ea;-><init>(Lcom/google/android/gms/internal/ads/ca;)V

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ja;->b()Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v1

    const-string v2, "AppState.registerCsiReporter"

    .line 26
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/de;->a(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/String;)V

    .line 27
    :cond_1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/ca;->d:Z

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ca;->j()Lcom/google/android/gms/internal/ads/qz0;

    .line 29
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/wa;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ca;->h:Ljava/lang/Boolean;

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

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ca;->f:Lcom/google/android/gms/internal/ads/zzawv;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/v6;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)Lcom/google/android/gms/internal/ads/z6;

    move-result-object v0

    .line 33
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/z6;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Landroid/content/res/Resources;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->f:Lcom/google/android/gms/internal/ads/zzawv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzawv;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ca;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/td;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/vd; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    .line 4
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ca;->f:Lcom/google/android/gms/internal/ads/zzawv;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/v6;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)Lcom/google/android/gms/internal/ads/z6;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/aw1;->i:Lcom/google/android/gms/internal/ads/pv1;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/z6;->a(Ljava/lang/Throwable;Ljava/lang/String;F)V

    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/ads/ew1;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ca;->g:Lcom/google/android/gms/internal/ads/ew1;

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

.method public final d()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ca;->h:Ljava/lang/Boolean;

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

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->j:Lcom/google/android/gms/internal/ads/da;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/da;->a()V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/pa;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ca;->b:Lcom/google/android/gms/internal/ads/sa;

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

.method public final j()Lcom/google/android/gms/internal/ads/qz0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/o;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->e:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->y1:Lcom/google/android/gms/internal/ads/pv1;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ca;->l:Lcom/google/android/gms/internal/ads/qz0;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ca;->l:Lcom/google/android/gms/internal/ads/qz0;

    monitor-exit v0

    return-object v1

    .line 8
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/yd;->a:Lcom/google/android/gms/internal/ads/tz0;

    new-instance v2, Lcom/google/android/gms/internal/ads/ba;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/ba;-><init>(Lcom/google/android/gms/internal/ads/ca;)V

    .line 9
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/tz0;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ca;->l:Lcom/google/android/gms/internal/ads/qz0;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 11
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/ka;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->c:Lcom/google/android/gms/internal/ads/ka;

    return-object v0
.end method

.method final synthetic l()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->e:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/z7;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ca;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
