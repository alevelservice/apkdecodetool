.class public Lcom/google/android/gms/measurement/internal/j4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/h5;


# static fields
.field private static volatile G:Lcom/google/android/gms/measurement/internal/j4;


# instance fields
.field private volatile A:Ljava/lang/Boolean;

.field private B:Ljava/lang/Boolean;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private C:Ljava/lang/Boolean;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private D:I

.field private E:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final F:J

.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Lcom/google/android/gms/measurement/internal/y8;

.field private final g:Lcom/google/android/gms/measurement/internal/z8;

.field private final h:Lcom/google/android/gms/measurement/internal/o3;

.field private final i:Lcom/google/android/gms/measurement/internal/f3;

.field private final j:Lcom/google/android/gms/measurement/internal/d4;

.field private final k:Lcom/google/android/gms/measurement/internal/v7;

.field private final l:Lcom/google/android/gms/measurement/internal/r8;

.field private final m:Lcom/google/android/gms/measurement/internal/d3;

.field private final n:Lcom/google/android/gms/common/util/e;

.field private final o:Lcom/google/android/gms/measurement/internal/p6;

.field private final p:Lcom/google/android/gms/measurement/internal/p5;

.field private final q:Lcom/google/android/gms/measurement/internal/a;

.field private final r:Lcom/google/android/gms/measurement/internal/k6;

.field private s:Lcom/google/android/gms/measurement/internal/b3;

.field private t:Lcom/google/android/gms/measurement/internal/u6;

.field private u:Lcom/google/android/gms/measurement/internal/d;

.field private v:Lcom/google/android/gms/measurement/internal/y2;

.field private w:Lcom/google/android/gms/measurement/internal/u3;

.field private x:Z

.field private y:Ljava/lang/Boolean;

.field private z:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/m5;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j4;->x:Z

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/m5;->a:Landroid/content/Context;

    .line 6
    new-instance v2, Lcom/google/android/gms/measurement/internal/y8;

    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/y8;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/j4;->f:Lcom/google/android/gms/measurement/internal/y8;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->f:Lcom/google/android/gms/measurement/internal/y8;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/j;->a(Lcom/google/android/gms/measurement/internal/y8;)V

    .line 9
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/m5;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    .line 10
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/m5;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/lang/String;

    .line 11
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/m5;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->c:Ljava/lang/String;

    .line 12
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/m5;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->d:Ljava/lang/String;

    .line 13
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/m5;->h:Z

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/j4;->e:Z

    .line 14
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/m5;->e:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->A:Ljava/lang/Boolean;

    .line 15
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/m5;->g:Lcom/google/android/gms/internal/measurement/zzx;

    if-eqz v1, :cond_1

    .line 16
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzx;->k:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v3, "measurementEnabled"

    .line 17
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 18
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 19
    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/j4;->B:Ljava/lang/Boolean;

    .line 20
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzx;->k:Landroid/os/Bundle;

    const-string v2, "measurementDeactivated"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 22
    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->C:Ljava/lang/Boolean;

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/p1;->a(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Lcom/google/android/gms/common/util/h;->d()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    .line 25
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->n:Lcom/google/android/gms/common/util/e;

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/j4;->F:J

    .line 27
    new-instance v1, Lcom/google/android/gms/measurement/internal/z8;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/z8;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 28
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/z8;

    .line 29
    new-instance v1, Lcom/google/android/gms/measurement/internal/o3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/o3;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    .line 31
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->h:Lcom/google/android/gms/measurement/internal/o3;

    .line 32
    new-instance v1, Lcom/google/android/gms/measurement/internal/f3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/f3;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    .line 34
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->i:Lcom/google/android/gms/measurement/internal/f3;

    .line 35
    new-instance v1, Lcom/google/android/gms/measurement/internal/r8;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/r8;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    .line 37
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->l:Lcom/google/android/gms/measurement/internal/r8;

    .line 38
    new-instance v1, Lcom/google/android/gms/measurement/internal/d3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/d3;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    .line 40
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->m:Lcom/google/android/gms/measurement/internal/d3;

    .line 41
    new-instance v1, Lcom/google/android/gms/measurement/internal/a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/a;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 42
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->q:Lcom/google/android/gms/measurement/internal/a;

    .line 43
    new-instance v1, Lcom/google/android/gms/measurement/internal/p6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/p6;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/z4;->s()V

    .line 45
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->o:Lcom/google/android/gms/measurement/internal/p6;

    .line 46
    new-instance v1, Lcom/google/android/gms/measurement/internal/p5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/p5;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/z4;->s()V

    .line 48
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->p:Lcom/google/android/gms/measurement/internal/p5;

    .line 49
    new-instance v1, Lcom/google/android/gms/measurement/internal/v7;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/v7;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/z4;->s()V

    .line 51
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->k:Lcom/google/android/gms/measurement/internal/v7;

    .line 52
    new-instance v1, Lcom/google/android/gms/measurement/internal/k6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/k6;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    .line 54
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->r:Lcom/google/android/gms/measurement/internal/k6;

    .line 55
    new-instance v1, Lcom/google/android/gms/measurement/internal/d4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/d4;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    .line 57
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->j:Lcom/google/android/gms/measurement/internal/d4;

    .line 58
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/m5;->g:Lcom/google/android/gms/internal/measurement/zzx;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-wide v3, v1, Lcom/google/android/gms/internal/measurement/zzx;->f:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    xor-int/2addr v0, v2

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_4

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->v()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_5

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    .line 63
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/p5;->c:Lcom/google/android/gms/measurement/internal/i6;

    if-nez v3, :cond_3

    .line 64
    new-instance v3, Lcom/google/android/gms/measurement/internal/i6;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/i6;-><init>(Lcom/google/android/gms/measurement/internal/p5;Lcom/google/android/gms/measurement/internal/o5;)V

    iput-object v3, v1, Lcom/google/android/gms/measurement/internal/p5;->c:Lcom/google/android/gms/measurement/internal/i6;

    :cond_3
    if-eqz v0, :cond_5

    .line 65
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/p5;->c:Lcom/google/android/gms/measurement/internal/i6;

    .line 66
    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 67
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/p5;->c:Lcom/google/android/gms/measurement/internal/i6;

    .line 68
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 71
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->j:Lcom/google/android/gms/measurement/internal/d4;

    new-instance v1, Lcom/google/android/gms/measurement/internal/k4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/k4;-><init>(Lcom/google/android/gms/measurement/internal/j4;Lcom/google/android/gms/measurement/internal/m5;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final E()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j4;->x:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final F()Lcom/google/android/gms/measurement/internal/k6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->r:Lcom/google/android/gms/measurement/internal/k6;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->b(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->r:Lcom/google/android/gms/measurement/internal/k6;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzx;)Lcom/google/android/gms/measurement/internal/j4;
    .locals 11

    if-eqz p1, :cond_1

    .line 40
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzx;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzx;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 41
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzx;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzx;->e:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzx;->f:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/zzx;->g:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzx;->h:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/zzx;->k:Landroid/os/Bundle;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/measurement/zzx;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v0

    .line 42
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/google/android/gms/measurement/internal/j4;->G:Lcom/google/android/gms/measurement/internal/j4;

    if-nez v0, :cond_3

    .line 45
    const-class v0, Lcom/google/android/gms/measurement/internal/j4;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/j4;->G:Lcom/google/android/gms/measurement/internal/j4;

    if-nez v1, :cond_2

    .line 47
    new-instance v1, Lcom/google/android/gms/measurement/internal/m5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/m5;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzx;)V

    .line 48
    new-instance p0, Lcom/google/android/gms/measurement/internal/j4;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/j4;-><init>(Lcom/google/android/gms/measurement/internal/m5;)V

    .line 49
    sput-object p0, Lcom/google/android/gms/measurement/internal/j4;->G:Lcom/google/android/gms/measurement/internal/j4;

    .line 50
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 51
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzx;->k:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string v0, "dataCollectionDefaultEnabled"

    .line 52
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 53
    sget-object p0, Lcom/google/android/gms/measurement/internal/j4;->G:Lcom/google/android/gms/measurement/internal/j4;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzx;->k:Landroid/os/Bundle;

    const-string v0, "dataCollectionDefaultEnabled"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/j4;->a(Z)V

    .line 56
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/j4;->G:Lcom/google/android/gms/measurement/internal/j4;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/j4;
    .locals 10
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 39
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzx;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/measurement/zzx;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/j4;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzx;)Lcom/google/android/gms/measurement/internal/j4;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/android/gms/measurement/internal/f5;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/j4;Lcom/google/android/gms/measurement/internal/m5;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/j4;->a(Lcom/google/android/gms/measurement/internal/m5;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/measurement/internal/m5;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d4;->g()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/measurement/internal/z8;->r()Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/internal/d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/d;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->u:Lcom/google/android/gms/measurement/internal/d;

    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/y2;

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/m5;->f:J

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/y2;-><init>(Lcom/google/android/gms/measurement/internal/j4;J)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z4;->s()V

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->v:Lcom/google/android/gms/measurement/internal/y2;

    .line 9
    new-instance p1, Lcom/google/android/gms/measurement/internal/b3;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/b3;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/z4;->s()V

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->s:Lcom/google/android/gms/measurement/internal/b3;

    .line 12
    new-instance p1, Lcom/google/android/gms/measurement/internal/u6;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/u6;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/z4;->s()V

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->t:Lcom/google/android/gms/measurement/internal/u6;

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->l:Lcom/google/android/gms/measurement/internal/r8;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e5;->n()V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->h:Lcom/google/android/gms/measurement/internal/o3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e5;->n()V

    .line 17
    new-instance p1, Lcom/google/android/gms/measurement/internal/u3;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/u3;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->w:Lcom/google/android/gms/measurement/internal/u3;

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->v:Lcom/google/android/gms/measurement/internal/y2;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/z4;->v()V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->w()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/z8;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/z8;->k()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement is starting up, version"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->w()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y2;->z()Ljava/lang/String;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/r8;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->w()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->w()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 31
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 33
    iget p1, p0, Lcom/google/android/gms/measurement/internal/j4;->D:I

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/j4;->D:I

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/j4;->x:Z

    return-void
.end method

.method private static b(Lcom/google/android/gms/measurement/internal/e5;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lcom/google/android/gms/measurement/internal/z4;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z4;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/measurement/internal/v7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->k:Lcom/google/android/gms/measurement/internal/v7;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->b(Lcom/google/android/gms/measurement/internal/z4;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->k:Lcom/google/android/gms/measurement/internal/v7;

    return-object v0
.end method

.method public final B()Lcom/google/android/gms/measurement/internal/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->u:Lcom/google/android/gms/measurement/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->b(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->u:Lcom/google/android/gms/measurement/internal/d;

    return-object v0
.end method

.method public final C()Lcom/google/android/gms/measurement/internal/d3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->m:Lcom/google/android/gms/measurement/internal/d3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->a(Lcom/google/android/gms/measurement/internal/f5;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->m:Lcom/google/android/gms/measurement/internal/d3;

    return-object v0
.end method

.method public final D()Lcom/google/android/gms/measurement/internal/r8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->l:Lcom/google/android/gms/measurement/internal/r8;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->a(Lcom/google/android/gms/measurement/internal/f5;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->l:Lcom/google/android/gms/measurement/internal/r8;

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/common/util/e;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->n:Lcom/google/android/gms/common/util/e;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzp;)V
    .locals 8
    .param p1    # Lcom/google/android/gms/internal/measurement/zzp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d4;->g()V

    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/k6;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->b(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->w()Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y2;->z()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/o3;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/z8;

    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/z8;->o()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/k6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k6;->q()Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->w()Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y2;->d()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/z8;->k()J

    move-result-wide v4

    .line 73
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v3, v0}, Lcom/google/android/gms/measurement/internal/r8;->a(JLjava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 74
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/k6;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/measurement/internal/i4;

    invoke-direct {v7, p0, p1}, Lcom/google/android/gms/measurement/internal/i4;-><init>(Lcom/google/android/gms/measurement/internal/j4;Lcom/google/android/gms/internal/measurement/zzp;)V

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/k6;->g()V

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e5;->m()V

    .line 77
    invoke-static {v4}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {v7}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/k6;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/m6;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/m6;-><init>(Lcom/google/android/gms/measurement/internal/k6;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/j6;)V

    .line 80
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/d4;->b(Ljava/lang/Runnable;)V

    return-void

    .line 81
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic a(Lcom/google/android/gms/internal/measurement/zzp;Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6

    const-string p2, "gclid"

    const-string p6, "deeplink"

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-eq p3, v2, :cond_0

    const/16 v2, 0xcc

    if-eq p3, v2, :cond_0

    const/16 v2, 0x130

    if-ne p3, v2, :cond_1

    :cond_0
    if-nez p4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, ""

    if-nez v2, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p2

    .line 84
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    .line 85
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p5, "Network Request for Deferred Deep Link failed. response, exception"

    .line 86
    invoke-virtual {p2, p5, p3, p4}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_2
    array-length p3, p5

    if-nez p3, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_3
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p5}, Ljava/lang/String;-><init>([B)V

    .line 91
    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p4, p6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 93
    invoke-virtual {p4, p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object p5

    .line 95
    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/r8;->e()V

    .line 96
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 97
    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/r8;->getContext()Landroid/content/Context;

    move-result-object p5

    .line 98
    invoke-virtual {p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p5

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    .line 99
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p5, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p5

    if-eqz p5, :cond_4

    .line 100
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p2

    .line 102
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    const-string p5, "Deferred Deep Link validation failed. gclid, deep link"

    .line 103
    invoke-virtual {p2, p5, p4, p3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_5
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 106
    invoke-virtual {p5, p6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p5, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/j4;->p:Lcom/google/android/gms/measurement/internal/p5;

    const-string p4, "auto"

    const-string p6, "_cmp"

    invoke-virtual {p2, p4, p6, p5}, Lcom/google/android/gms/measurement/internal/p5;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p3

    const-string p4, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {p3, p4, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/e5;)V
    .locals 0

    .line 59
    iget p1, p0, Lcom/google/android/gms/measurement/internal/j4;->D:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/j4;->D:I

    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/z4;)V
    .locals 0

    .line 60
    iget p1, p0, Lcom/google/android/gms/measurement/internal/j4;->D:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/j4;->D:I

    return-void
.end method

.method final a(Z)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 58
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->A:Ljava/lang/Boolean;

    return-void
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/d4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->j:Lcom/google/android/gms/measurement/internal/d4;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->b(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->j:Lcom/google/android/gms/measurement/internal/d4;

    return-object v0
.end method

.method public final c()Z
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d4;->g()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/j4;->E()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/z8;

    .line 4
    sget-object v1, Lcom/google/android/gms/measurement/internal/j;->l0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z8;->a(Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/z8;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z8;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->u()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/z8;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z8;->n()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 16
    :cond_4
    invoke-static {}, Lcom/google/android/gms/common/api/internal/h;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/z8;

    .line 18
    sget-object v2, Lcom/google/android/gms/measurement/internal/j;->g0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z8;->a(Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->A:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6
    return v1

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/z8;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z8;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    .line 22
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/z8;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z8;->n()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 25
    :cond_9
    invoke-static {}, Lcom/google/android/gms/common/api/internal/h;->b()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->A:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 27
    sget-object v1, Lcom/google/android/gms/measurement/internal/j;->g0:Lcom/google/android/gms/measurement/internal/w2;

    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/w2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->A:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 31
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/o3;->c(Z)Z

    move-result v0

    return v0
.end method

.method protected final d()V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d4;->g()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o3;->e:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o3;->e:Lcom/google/android/gms/measurement/internal/t3;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->n:Lcom/google/android/gms/common/util/e;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/t3;->a(J)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o3;->j:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j4;->F:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Persisting first open"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o3;->j:Lcom/google/android/gms/measurement/internal/t3;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j4;->F:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/t3;->a(J)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->r()Z

    move-result v0

    if-nez v0, :cond_6

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/r8;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/r8;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/o/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/o/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/o/b;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/z8;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z8;->q()Z

    move-result v0

    if-nez v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/z3;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/r8;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 26
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 27
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->w()Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y2;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->w()Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y2;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 29
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->w()Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y2;->y()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->q()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->w()Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y2;->A()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o3;->r()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/r8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->w()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->t()V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->z()Lcom/google/android/gms/measurement/internal/b3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b3;->y()V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->t:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u6;->y()V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->t:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u6;->D()V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o3;->j:Lcom/google/android/gms/measurement/internal/t3;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j4;->F:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/t3;->a(J)V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o3;->l:Lcom/google/android/gms/measurement/internal/v3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v3;->a(Ljava/lang/String;)V

    .line 42
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->w()Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y2;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/o3;->c(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->w()Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y2;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/o3;->d(Ljava/lang/String;)V

    .line 44
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->v()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/o3;->l:Lcom/google/android/gms/measurement/internal/v3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/v3;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/p5;->a(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->w()Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y2;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->w()Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y2;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 47
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Z

    move-result v0

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->x()Z

    move-result v1

    if-nez v1, :cond_b

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/z8;

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/z8;->m()Z

    move-result v1

    if-nez v1, :cond_b

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/o3;->d(Z)V

    :cond_b
    if-eqz v0, :cond_c

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->v()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->I()V

    .line 53
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/u6;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/u6;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 54
    :cond_d
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o3;->t:Lcom/google/android/gms/measurement/internal/q3;

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/z8;

    .line 56
    sget-object v2, Lcom/google/android/gms/measurement/internal/j;->t0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z8;->a(Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/q3;->a(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o3;->u:Lcom/google/android/gms/measurement/internal/q3;

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/z8;

    .line 59
    sget-object v2, Lcom/google/android/gms/measurement/internal/j;->u0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z8;->a(Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/q3;->a(Z)V

    return-void
.end method

.method public final e()Lcom/google/android/gms/measurement/internal/o3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->h:Lcom/google/android/gms/measurement/internal/o3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->a(Lcom/google/android/gms/measurement/internal/f5;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->h:Lcom/google/android/gms/measurement/internal/o3;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/measurement/internal/z8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/z8;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/measurement/internal/f3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->i:Lcom/google/android/gms/measurement/internal/f3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e5;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->i:Lcom/google/android/gms/measurement/internal/f3;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/measurement/internal/u3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->w:Lcom/google/android/gms/measurement/internal/u3;

    return-object v0
.end method

.method final i()Lcom/google/android/gms/measurement/internal/d4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->j:Lcom/google/android/gms/measurement/internal/d4;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j4;->e:Z

    return v0
.end method

.method public final o()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->A:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final p()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o3;->j:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j4;->F:J

    return-wide v0

    .line 4
    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j4;->F:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method final q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method protected final r()Z
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/j4;->E()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d4;->g()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->y:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j4;->z:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->n:Lcom/google/android/gms/common/util/e;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/j4;->z:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->n:Lcom/google/android/gms/common/util/e;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/j4;->z:J

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/r8;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/r8;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/o/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/o/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/o/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/z8;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z8;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/z3;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    .line 18
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/r8;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->y:Ljava/lang/Boolean;

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->w()Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/y2;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->w()Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/y2;->A()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/r8;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->w()Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y2;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 23
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->y:Ljava/lang/Boolean;

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method final s()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final t()V
    .locals 0

    return-void
.end method

.method public final u()Lcom/google/android/gms/measurement/internal/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->q:Lcom/google/android/gms/measurement/internal/a;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v()Lcom/google/android/gms/measurement/internal/p5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->p:Lcom/google/android/gms/measurement/internal/p5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->b(Lcom/google/android/gms/measurement/internal/z4;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->p:Lcom/google/android/gms/measurement/internal/p5;

    return-object v0
.end method

.method public final w()Lcom/google/android/gms/measurement/internal/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->v:Lcom/google/android/gms/measurement/internal/y2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->b(Lcom/google/android/gms/measurement/internal/z4;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->v:Lcom/google/android/gms/measurement/internal/y2;

    return-object v0
.end method

.method public final x()Lcom/google/android/gms/measurement/internal/u6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->t:Lcom/google/android/gms/measurement/internal/u6;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->b(Lcom/google/android/gms/measurement/internal/z4;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->t:Lcom/google/android/gms/measurement/internal/u6;

    return-object v0
.end method

.method public final y()Lcom/google/android/gms/measurement/internal/p6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->o:Lcom/google/android/gms/measurement/internal/p6;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->b(Lcom/google/android/gms/measurement/internal/z4;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->o:Lcom/google/android/gms/measurement/internal/p6;

    return-object v0
.end method

.method public final z()Lcom/google/android/gms/measurement/internal/b3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->s:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->b(Lcom/google/android/gms/measurement/internal/z4;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->s:Lcom/google/android/gms/measurement/internal/b3;

    return-object v0
.end method

.method public final zzab()Lcom/google/android/gms/measurement/internal/f3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->i:Lcom/google/android/gms/measurement/internal/f3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->b(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->i:Lcom/google/android/gms/measurement/internal/f3;

    return-object v0
.end method

.method public final zzae()Lcom/google/android/gms/measurement/internal/y8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->f:Lcom/google/android/gms/measurement/internal/y8;

    return-object v0
.end method
