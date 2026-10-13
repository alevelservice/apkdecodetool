.class public Lg/c/a/f/g/e;
.super Lg/c/a/b/g$b;
.source "NewThreadWorker.java"

# interfaces
.implements Lg/c/a/c/c;


# instance fields
.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field volatile f:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/c/a/b/g$b;-><init>()V

    .line 2
    invoke-static {p1}, Lg/c/a/f/g/k;->a(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lg/c/a/f/g/e;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Lg/c/a/c/c;
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v2}, Lg/c/a/f/g/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lg/c/a/c/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lg/c/a/c/c;
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 2
    iget-boolean v0, p0, Lg/c/a/f/g/e;->f:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    return-object p1

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lg/c/a/f/g/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lg/c/a/c/d;)Lg/c/a/f/g/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lg/c/a/c/d;)Lg/c/a/f/g/i;
    .locals 3
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .param p5    # Lg/c/a/c/d;
        .annotation build Lio/reactivex/rxjava3/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 5
    invoke-static {p1}, Lg/c/a/h/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 6
    new-instance v0, Lg/c/a/f/g/i;

    invoke-direct {v0, p1, p5}, Lg/c/a/f/g/i;-><init>(Ljava/lang/Runnable;Lg/c/a/c/d;)V

    if-eqz p5, :cond_0

    .line 7
    invoke-interface {p5, v0}, Lg/c/a/c/d;->b(Lg/c/a/c/c;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_1

    .line 8
    :try_start_0
    iget-object p1, p0, Lg/c/a/f/g/e;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lg/c/a/f/g/e;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Lg/c/a/f/g/i;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    if-eqz p5, :cond_2

    .line 11
    invoke-interface {p5, v0}, Lg/c/a/c/d;->a(Lg/c/a/c/c;)Z

    .line 12
    :cond_2
    invoke-static {p1}, Lg/c/a/h/a;->b(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public a()V
    .locals 1

    .line 13
    iget-boolean v0, p0, Lg/c/a/f/g/e;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lg/c/a/f/g/e;->f:Z

    .line 15
    iget-object v0, p0, Lg/c/a/f/g/e;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lg/c/a/c/c;
    .locals 3

    .line 1
    new-instance v0, Lg/c/a/f/g/h;

    invoke-static {p1}, Lg/c/a/h/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/c/a/f/g/h;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lg/c/a/f/g/e;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lg/c/a/f/g/e;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Lg/c/a/f/g/a;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lg/c/a/h/a;->b(Ljava/lang/Throwable;)V

    .line 6
    sget-object p1, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/c/a/f/g/e;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lg/c/a/f/g/e;->f:Z

    .line 3
    iget-object v0, p0, Lg/c/a/f/g/e;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method
