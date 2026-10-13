.class final Lg/c/a/f/g/l$a;
.super Lg/c/a/b/g$b;
.source "SingleScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/a/f/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final e:Ljava/util/concurrent/ScheduledExecutorService;

.field final f:Lg/c/a/c/a;

.field volatile g:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/c/a/b/g$b;-><init>()V

    .line 2
    iput-object p1, p0, Lg/c/a/f/g/l$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    new-instance p1, Lg/c/a/c/a;

    invoke-direct {p1}, Lg/c/a/c/a;-><init>()V

    iput-object p1, p0, Lg/c/a/f/g/l$a;->f:Lg/c/a/c/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lg/c/a/c/c;
    .locals 3
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

    .line 1
    iget-boolean v0, p0, Lg/c/a/f/g/l$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lg/c/a/h/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 4
    new-instance v0, Lg/c/a/f/g/i;

    iget-object v1, p0, Lg/c/a/f/g/l$a;->f:Lg/c/a/c/a;

    invoke-direct {v0, p1, v1}, Lg/c/a/f/g/i;-><init>(Ljava/lang/Runnable;Lg/c/a/c/d;)V

    .line 5
    iget-object p1, p0, Lg/c/a/f/g/l$a;->f:Lg/c/a/c/a;

    invoke-virtual {p1, v0}, Lg/c/a/c/a;->b(Lg/c/a/c/c;)Z

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_1

    .line 6
    :try_start_0
    iget-object p1, p0, Lg/c/a/f/g/l$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lg/c/a/f/g/l$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 8
    :goto_0
    invoke-virtual {v0, p1}, Lg/c/a/f/g/i;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p0}, Lg/c/a/f/g/l$a;->dispose()V

    .line 10
    invoke-static {p1}, Lg/c/a/h/a;->b(Ljava/lang/Throwable;)V

    .line 11
    sget-object p1, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/c/a/f/g/l$a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lg/c/a/f/g/l$a;->g:Z

    .line 3
    iget-object v0, p0, Lg/c/a/f/g/l$a;->f:Lg/c/a/c/a;

    invoke-virtual {v0}, Lg/c/a/c/a;->dispose()V

    :cond_0
    return-void
.end method
