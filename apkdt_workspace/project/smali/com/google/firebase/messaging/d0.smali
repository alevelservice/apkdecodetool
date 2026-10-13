.class Lcom/google/firebase/messaging/d0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.1"


# static fields
.field private static final i:J


# instance fields
.field private final a:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/firebase/iid/r;

.field private final d:Lcom/google/firebase/iid/o;

.field private final e:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "pendingOperations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayDeque<",
            "Le/i/b/b/d/i<",
            "Ljava/lang/Void;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/ScheduledExecutorService;

.field private g:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final h:Lcom/google/firebase/messaging/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    .line 1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/d0;->i:J

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/r;Lcom/google/firebase/messaging/b0;Lcom/google/firebase/iid/o;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p6    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, La/e/a;

    invoke-direct {v0}, La/e/a;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/d0;->e:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/d0;->g:Z

    iput-object p1, p0, Lcom/google/firebase/messaging/d0;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/messaging/d0;->c:Lcom/google/firebase/iid/r;

    iput-object p3, p0, Lcom/google/firebase/messaging/d0;->h:Lcom/google/firebase/messaging/b0;

    iput-object p4, p0, Lcom/google/firebase/messaging/d0;->d:Lcom/google/firebase/iid/o;

    iput-object p5, p0, Lcom/google/firebase/messaging/d0;->b:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/firebase/messaging/d0;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static final synthetic a(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/r;Lcom/google/firebase/iid/o;)Lcom/google/firebase/messaging/d0;
    .locals 8

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/b0;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/b0;

    move-result-object v3

    new-instance v7, Lcom/google/firebase/messaging/d0;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/messaging/d0;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/r;Lcom/google/firebase/messaging/b0;Lcom/google/firebase/iid/o;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v7
.end method

.method static a(Lcom/google/firebase/c;Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/r;Lcom/google/firebase/p/b;Lcom/google/firebase/p/b;Lcom/google/firebase/installations/g;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Le/i/b/b/d/h;
    .locals 7
    .param p7    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            "Lcom/google/firebase/iid/FirebaseInstanceId;",
            "Lcom/google/firebase/iid/r;",
            "Lcom/google/firebase/p/b<",
            "Lcom/google/firebase/r/i;",
            ">;",
            "Lcom/google/firebase/p/b<",
            "Lcom/google/firebase/o/f;",
            ">;",
            "Lcom/google/firebase/installations/g;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Le/i/b/b/d/h<",
            "Lcom/google/firebase/messaging/d0;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v6, Lcom/google/firebase/iid/o;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/o;-><init>(Lcom/google/firebase/c;Lcom/google/firebase/iid/r;Lcom/google/firebase/p/b;Lcom/google/firebase/p/b;Lcom/google/firebase/installations/g;)V

    invoke-static {p1, p2, v6, p6, p7}, Lcom/google/firebase/messaging/d0;->a(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/r;Lcom/google/firebase/iid/o;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Le/i/b/b/d/h;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/r;Lcom/google/firebase/iid/o;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Le/i/b/b/d/h;
    .locals 7
    .param p4    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/iid/FirebaseInstanceId;",
            "Lcom/google/firebase/iid/r;",
            "Lcom/google/firebase/iid/o;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Le/i/b/b/d/h<",
            "Lcom/google/firebase/messaging/d0;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/google/firebase/messaging/c0;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 42
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/messaging/c0;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/r;Lcom/google/firebase/iid/o;)V

    invoke-static {p4, v6}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p0

    return-object p0
.end method

.method private static a(Le/i/b/b/d/h;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/i/b/b/d/h<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    .line 9
    invoke-static {p0, v1, v2, v0}, Le/i/b/b/d/k;->a(Le/i/b/b/d/h;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 10
    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    .line 11
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 13
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 14
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 15
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 16
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 17
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 18
    :cond_1
    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method private a(Lcom/google/firebase/messaging/a0;Le/i/b/b/d/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/messaging/a0;",
            "Le/i/b/b/d/i<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/d0;->e:Ljava/util/Map;

    .line 1
    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/a0;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/messaging/d0;->e:Ljava/util/Map;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/messaging/d0;->e:Ljava/util/Map;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayDeque;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v2, p0, Lcom/google/firebase/messaging/d0;->e:Ljava/util/Map;

    .line 6
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    .line 7
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Lcom/google/firebase/messaging/a0;)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/messaging/d0;->e:Ljava/util/Map;

    .line 3
    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/a0;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/messaging/d0;->e:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/messaging/d0;->e:Ljava/util/Map;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/i/b/b/d/i;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Le/i/b/b/d/i;->a(Ljava/lang/Object;)V

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/messaging/d0;->e:Ljava/util/Map;

    .line 10
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/d0;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->e()Le/i/b/b/d/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/messaging/d0;->a(Le/i/b/b/d/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/p;

    iget-object v1, p0, Lcom/google/firebase/messaging/d0;->d:Lcom/google/firebase/iid/o;

    .line 2
    invoke-interface {v0}, Lcom/google/firebase/iid/p;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/firebase/iid/p;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p1}, Lcom/google/firebase/iid/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/i/b/b/d/h;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/messaging/d0;->a(Le/i/b/b/d/h;)Ljava/lang/Object;

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/d0;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->e()Le/i/b/b/d/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/messaging/d0;->a(Le/i/b/b/d/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/p;

    iget-object v1, p0, Lcom/google/firebase/messaging/d0;->d:Lcom/google/firebase/iid/o;

    .line 2
    invoke-interface {v0}, Lcom/google/firebase/iid/p;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/firebase/iid/p;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p1}, Lcom/google/firebase/iid/o;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/i/b/b/d/h;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/firebase/messaging/d0;->a(Le/i/b/b/d/h;)Ljava/lang/Object;

    return-void
.end method

.method static e()Z
    .locals 6

    const/4 v0, 0x3

    const-string v1, "FirebaseMessaging"

    .line 1
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ne v2, v5, :cond_1

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_0
    return v4
.end method

.method private f()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/messaging/d0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/d0;->a(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Le/i/b/b/d/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-static {p1}, Lcom/google/firebase/messaging/a0;->b(Ljava/lang/String;)Lcom/google/firebase/messaging/a0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/d0;->b(Lcom/google/firebase/messaging/a0;)Le/i/b/b/d/h;

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Lcom/google/firebase/messaging/d0;->c()V

    return-object p1
.end method

.method a(J)V
    .locals 10

    add-long v0, p1, p1

    const-wide/16 v2, 0x1e

    .line 38
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/messaging/d0;->i:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    new-instance v0, Lcom/google/firebase/messaging/e0;

    iget-object v6, p0, Lcom/google/firebase/messaging/d0;->b:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/firebase/messaging/d0;->c:Lcom/google/firebase/iid/r;

    move-object v4, v0

    move-object v5, p0

    .line 39
    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/messaging/e0;-><init>(Lcom/google/firebase/messaging/d0;Landroid/content/Context;Lcom/google/firebase/iid/r;J)V

    .line 40
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/messaging/d0;->a(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/d0;->a(Z)V

    return-void
.end method

.method a(Ljava/lang/Runnable;J)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/d0;->f:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/messaging/d0;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/d0;->h:Lcom/google/firebase/messaging/b0;

    .line 20
    invoke-virtual {v0}, Lcom/google/firebase/messaging/b0;->a()Lcom/google/firebase/messaging/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method a(Lcom/google/firebase/messaging/a0;)Z
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/a0;->a()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x53

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x55

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "U"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, " succeeded."

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    .line 22
    :try_start_1
    invoke-static {}, Lcom/google/firebase/messaging/d0;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown topic operation"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/messaging/a0;->b()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-direct {p0, v1}, Lcom/google/firebase/messaging/d0;->d(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/google/firebase/messaging/d0;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/google/firebase/messaging/a0;->b()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsubscribe from topic: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/google/firebase/messaging/a0;->b()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-direct {p0, v1}, Lcom/google/firebase/messaging/d0;->c(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/google/firebase/messaging/d0;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/google/firebase/messaging/a0;->b()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Subscribe to topic: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_2
    return v4

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 31
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTERNAL_SERVER_ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 32
    :cond_6
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    return v0

    .line 33
    :cond_7
    throw p1

    .line 34
    :cond_8
    :goto_3
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x35

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Topic operation failed: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Will retry Topic operation."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0
.end method

.method b(Lcom/google/firebase/messaging/a0;)Le/i/b/b/d/h;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/messaging/a0;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/d0;->h:Lcom/google/firebase/messaging/b0;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/b0;->a(Lcom/google/firebase/messaging/a0;)Z

    .line 2
    new-instance v0, Le/i/b/b/d/i;

    invoke-direct {v0}, Le/i/b/b/d/i;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/messaging/d0;->a(Lcom/google/firebase/messaging/a0;Le/i/b/b/d/i;)V

    .line 4
    invoke-virtual {v0}, Le/i/b/b/d/i;->a()Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/String;)Le/i/b/b/d/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/google/firebase/messaging/a0;->c(Ljava/lang/String;)Lcom/google/firebase/messaging/a0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/d0;->b(Lcom/google/firebase/messaging/a0;)Le/i/b/b/d/h;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/messaging/d0;->c()V

    return-object p1
.end method

.method declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/d0;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()V
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/google/firebase/messaging/d0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-direct {p0}, Lcom/google/firebase/messaging/d0;->f()V

    :cond_0
    return-void
.end method

.method d()Z
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/d0;->h:Lcom/google/firebase/messaging/b0;

    .line 4
    invoke-virtual {v0}, Lcom/google/firebase/messaging/b0;->a()Lcom/google/firebase/messaging/a0;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/google/firebase/messaging/d0;->e()Z

    move-result v0

    .line 6
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 7
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/d0;->a(Lcom/google/firebase/messaging/a0;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/messaging/d0;->h:Lcom/google/firebase/messaging/b0;

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/b0;->b(Lcom/google/firebase/messaging/a0;)Z

    .line 10
    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/d0;->c(Lcom/google/firebase/messaging/a0;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
