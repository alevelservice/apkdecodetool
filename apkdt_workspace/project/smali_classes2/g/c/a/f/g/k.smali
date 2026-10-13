.class public final Lg/c/a/f/g/k;
.super Ljava/lang/Object;
.source "SchedulerPoolFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/c/a/f/g/k$a;,
        Lg/c/a/f/g/k$b;
    }
.end annotation


# static fields
.field public static final a:Z

.field public static final b:I

.field static final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lg/c/a/f/g/k;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lg/c/a/f/g/k;->d:Ljava/util/Map;

    .line 3
    new-instance v0, Lg/c/a/f/g/k$b;

    invoke-direct {v0}, Lg/c/a/f/g/k$b;-><init>()V

    const/4 v1, 0x1

    const-string v2, "rx3.purge-enabled"

    .line 4
    invoke-static {v1, v2, v1, v1, v0}, Lg/c/a/f/g/k;->a(ZLjava/lang/String;ZZLg/c/a/e/e;)Z

    move-result v2

    sput-boolean v2, Lg/c/a/f/g/k;->a:Z

    .line 5
    sget-boolean v2, Lg/c/a/f/g/k;->a:Z

    const-string v3, "rx3.purge-period-seconds"

    invoke-static {v2, v3, v1, v1, v0}, Lg/c/a/f/g/k;->a(ZLjava/lang/String;IILg/c/a/e/e;)I

    move-result v0

    sput v0, Lg/c/a/f/g/k;->b:I

    .line 6
    invoke-static {}, Lg/c/a/f/g/k;->a()V

    return-void
.end method

.method static a(ZLjava/lang/String;IILg/c/a/e/e;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "II",
            "Lg/c/a/e/e<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 7
    :try_start_0
    invoke-interface {p4, p1}, Lg/c/a/e/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    return p2

    .line 8
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lg/c/a/d/b;->b(Ljava/lang/Throwable;)V

    return p2

    :cond_1
    return p3
.end method

.method public static a(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    const/4 v0, 0x1

    .line 13
    invoke-static {v0, p0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    .line 14
    sget-boolean v0, Lg/c/a/f/g/k;->a:Z

    invoke-static {v0, p0}, Lg/c/a/f/g/k;->a(ZLjava/util/concurrent/ScheduledExecutorService;)V

    return-object p0
.end method

.method public static a()V
    .locals 1

    .line 1
    sget-boolean v0, Lg/c/a/f/g/k;->a:Z

    invoke-static {v0}, Lg/c/a/f/g/k;->a(Z)V

    return-void
.end method

.method static a(Z)V
    .locals 10

    if-eqz p0, :cond_2

    .line 2
    :goto_0
    sget-object p0, Lg/c/a/f/g/k;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    new-instance v1, Lg/c/a/f/g/g;

    const-string v2, "RxSchedulerPurge"

    invoke-direct {v1, v2}, Lg/c/a/f/g/g;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 4
    sget-object v0, Lg/c/a/f/g/k;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    new-instance v4, Lg/c/a/f/g/k$a;

    invoke-direct {v4}, Lg/c/a/f/g/k$a;-><init>()V

    sget p0, Lg/c/a/f/g/k;->b:I

    int-to-long v5, p0

    int-to-long v7, p0

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 6
    :cond_1
    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    :cond_2
    return-void
.end method

.method static a(ZLjava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 15
    instance-of p0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz p0, :cond_0

    .line 16
    move-object p0, p1

    check-cast p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 17
    sget-object v0, Lg/c/a/f/g/k;->d:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static a(ZLjava/lang/String;ZZLg/c/a/e/e;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZZ",
            "Lg/c/a/e/e<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 10
    :try_start_0
    invoke-interface {p4, p1}, Lg/c/a/e/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "true"

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lg/c/a/d/b;->b(Ljava/lang/Throwable;)V

    return p2

    :cond_1
    return p3
.end method
