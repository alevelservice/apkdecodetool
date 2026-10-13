.class final Lg/c/a/f/e/a/c$a;
.super Lg/c/a/f/d/a;
.source "ObservableObserveOn.java"

# interfaces
.implements Lg/c/a/b/f;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/a/f/e/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lg/c/a/f/d/a<",
        "TT;>;",
        "Lg/c/a/b/f<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5b45d4a143741ca0L


# instance fields
.field final bufferSize:I

.field final delayError:Z

.field volatile disposed:Z

.field volatile done:Z

.field final downstream:Lg/c/a/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/b/f<",
            "-TT;>;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field outputFused:Z

.field queue:Lg/c/a/f/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/f/c/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field sourceMode:I

.field upstream:Lg/c/a/c/c;

.field final worker:Lg/c/a/b/g$b;


# direct methods
.method constructor <init>(Lg/c/a/b/f;Lg/c/a/b/g$b;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/b/f<",
            "-TT;>;",
            "Lg/c/a/b/g$b;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lg/c/a/f/d/a;-><init>()V

    .line 2
    iput-object p1, p0, Lg/c/a/f/e/a/c$a;->downstream:Lg/c/a/b/f;

    .line 3
    iput-object p2, p0, Lg/c/a/f/e/a/c$a;->worker:Lg/c/a/b/g$b;

    .line 4
    iput-boolean p3, p0, Lg/c/a/f/e/a/c$a;->delayError:Z

    .line 5
    iput p4, p0, Lg/c/a/f/e/a/c$a;->bufferSize:I

    return-void
.end method


# virtual methods
.method checkTerminated(ZZLg/c/a/b/f;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lg/c/a/b/f<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lg/c/a/f/e/a/c$a;->disposed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lg/c/a/f/e/a/c$a;->queue:Lg/c/a/f/c/e;

    invoke-interface {p1}, Lg/c/a/f/c/e;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Lg/c/a/f/e/a/c$a;->error:Ljava/lang/Throwable;

    .line 4
    iget-boolean v0, p0, Lg/c/a/f/e/a/c$a;->delayError:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_4

    .line 5
    iput-boolean v1, p0, Lg/c/a/f/e/a/c$a;->disposed:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p3, p1}, Lg/c/a/b/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p3}, Lg/c/a/b/f;->onComplete()V

    .line 8
    :goto_0
    iget-object p1, p0, Lg/c/a/f/e/a/c$a;->worker:Lg/c/a/b/g$b;

    invoke-interface {p1}, Lg/c/a/c/c;->dispose()V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 9
    iput-boolean v1, p0, Lg/c/a/f/e/a/c$a;->disposed:Z

    .line 10
    iget-object p2, p0, Lg/c/a/f/e/a/c$a;->queue:Lg/c/a/f/c/e;

    invoke-interface {p2}, Lg/c/a/f/c/e;->clear()V

    .line 11
    invoke-interface {p3, p1}, Lg/c/a/b/f;->onError(Ljava/lang/Throwable;)V

    .line 12
    iget-object p1, p0, Lg/c/a/f/e/a/c$a;->worker:Lg/c/a/b/g$b;

    invoke-interface {p1}, Lg/c/a/c/c;->dispose()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 13
    iput-boolean v1, p0, Lg/c/a/f/e/a/c$a;->disposed:Z

    .line 14
    invoke-interface {p3}, Lg/c/a/b/f;->onComplete()V

    .line 15
    iget-object p1, p0, Lg/c/a/f/e/a/c$a;->worker:Lg/c/a/b/g$b;

    invoke-interface {p1}, Lg/c/a/c/c;->dispose()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/c/a/f/e/a/c$a;->queue:Lg/c/a/f/c/e;

    invoke-interface {v0}, Lg/c/a/f/c/e;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/c/a/f/e/a/c$a;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lg/c/a/f/e/a/c$a;->disposed:Z

    .line 3
    iget-object v0, p0, Lg/c/a/f/e/a/c$a;->upstream:Lg/c/a/c/c;

    invoke-interface {v0}, Lg/c/a/c/c;->dispose()V

    .line 4
    iget-object v0, p0, Lg/c/a/f/e/a/c$a;->worker:Lg/c/a/b/g$b;

    invoke-interface {v0}, Lg/c/a/c/c;->dispose()V

    .line 5
    iget-boolean v0, p0, Lg/c/a/f/e/a/c$a;->outputFused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lg/c/a/f/e/a/c$a;->queue:Lg/c/a/f/c/e;

    invoke-interface {v0}, Lg/c/a/f/c/e;->clear()V

    :cond_0
    return-void
.end method

.method drainFused()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 1
    :cond_0
    iget-boolean v2, p0, Lg/c/a/f/e/a/c$a;->disposed:Z

    if-eqz v2, :cond_1

    return-void

    .line 2
    :cond_1
    iget-boolean v2, p0, Lg/c/a/f/e/a/c$a;->done:Z

    .line 3
    iget-object v3, p0, Lg/c/a/f/e/a/c$a;->error:Ljava/lang/Throwable;

    .line 4
    iget-boolean v4, p0, Lg/c/a/f/e/a/c$a;->delayError:Z

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 5
    iput-boolean v0, p0, Lg/c/a/f/e/a/c$a;->disposed:Z

    .line 6
    iget-object v0, p0, Lg/c/a/f/e/a/c$a;->downstream:Lg/c/a/b/f;

    invoke-interface {v0, v3}, Lg/c/a/b/f;->onError(Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Lg/c/a/f/e/a/c$a;->worker:Lg/c/a/b/g$b;

    invoke-interface {v0}, Lg/c/a/c/c;->dispose()V

    return-void

    .line 8
    :cond_2
    iget-object v3, p0, Lg/c/a/f/e/a/c$a;->downstream:Lg/c/a/b/f;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lg/c/a/b/f;->onNext(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    .line 9
    iput-boolean v0, p0, Lg/c/a/f/e/a/c$a;->disposed:Z

    .line 10
    iget-object v0, p0, Lg/c/a/f/e/a/c$a;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 11
    iget-object v1, p0, Lg/c/a/f/e/a/c$a;->downstream:Lg/c/a/b/f;

    invoke-interface {v1, v0}, Lg/c/a/b/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lg/c/a/f/e/a/c$a;->downstream:Lg/c/a/b/f;

    invoke-interface {v0}, Lg/c/a/b/f;->onComplete()V

    .line 13
    :goto_0
    iget-object v0, p0, Lg/c/a/f/e/a/c$a;->worker:Lg/c/a/b/g$b;

    invoke-interface {v0}, Lg/c/a/c/c;->dispose()V

    return-void

    :cond_4
    neg-int v1, v1

    .line 14
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void
.end method

.method drainNormal()V
    .locals 7

    .line 1
    iget-object v0, p0, Lg/c/a/f/e/a/c$a;->queue:Lg/c/a/f/c/e;

    .line 2
    iget-object v1, p0, Lg/c/a/f/e/a/c$a;->downstream:Lg/c/a/b/f;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 3
    :cond_0
    iget-boolean v4, p0, Lg/c/a/f/e/a/c$a;->done:Z

    invoke-interface {v0}, Lg/c/a/f/c/e;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v1}, Lg/c/a/f/e/a/c$a;->checkTerminated(ZZLg/c/a/b/f;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 4
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lg/c/a/f/e/a/c$a;->done:Z

    .line 5
    :try_start_0
    invoke-interface {v0}, Lg/c/a/f/c/e;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 6
    :goto_1
    invoke-virtual {p0, v4, v6, v1}, Lg/c/a/f/e/a/c$a;->checkTerminated(ZZLg/c/a/b/f;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    if-eqz v6, :cond_4

    neg-int v3, v3

    .line 7
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 8
    :cond_4
    invoke-interface {v1, v5}, Lg/c/a/b/f;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 9
    invoke-static {v3}, Lg/c/a/d/b;->b(Ljava/lang/Throwable;)V

    .line 10
    iput-boolean v2, p0, Lg/c/a/f/e/a/c$a;->disposed:Z

    .line 11
    iget-object v2, p0, Lg/c/a/f/e/a/c$a;->upstream:Lg/c/a/c/c;

    invoke-interface {v2}, Lg/c/a/c/c;->dispose()V

    .line 12
    invoke-interface {v0}, Lg/c/a/f/c/e;->clear()V

    .line 13
    invoke-interface {v1, v3}, Lg/c/a/b/f;->onError(Ljava/lang/Throwable;)V

    .line 14
    iget-object v0, p0, Lg/c/a/f/e/a/c$a;->worker:Lg/c/a/b/g$b;

    invoke-interface {v0}, Lg/c/a/c/c;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/c/a/f/e/a/c$a;->disposed:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg/c/a/f/e/a/c$a;->queue:Lg/c/a/f/c/e;

    invoke-interface {v0}, Lg/c/a/f/c/e;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/c/a/f/e/a/c$a;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lg/c/a/f/e/a/c$a;->done:Z

    .line 3
    invoke-virtual {p0}, Lg/c/a/f/e/a/c$a;->schedule()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/c/a/f/e/a/c$a;->done:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lg/c/a/h/a;->b(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lg/c/a/f/e/a/c$a;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lg/c/a/f/e/a/c$a;->done:Z

    .line 5
    invoke-virtual {p0}, Lg/c/a/f/e/a/c$a;->schedule()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lg/c/a/f/e/a/c$a;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lg/c/a/f/e/a/c$a;->sourceMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lg/c/a/f/e/a/c$a;->queue:Lg/c/a/f/c/e;

    invoke-interface {v0, p1}, Lg/c/a/f/c/e;->offer(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    invoke-virtual {p0}, Lg/c/a/f/e/a/c$a;->schedule()V

    return-void
.end method

.method public onSubscribe(Lg/c/a/c/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/c/a/f/e/a/c$a;->upstream:Lg/c/a/c/c;

    invoke-static {v0, p1}, Lg/c/a/f/a/a;->validate(Lg/c/a/c/c;Lg/c/a/c/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lg/c/a/f/e/a/c$a;->upstream:Lg/c/a/c/c;

    .line 3
    instance-of v0, p1, Lg/c/a/f/c/b;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lg/c/a/f/c/b;

    const/4 v0, 0x7

    .line 5
    invoke-interface {p1, v0}, Lg/c/a/f/c/c;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iput v0, p0, Lg/c/a/f/e/a/c$a;->sourceMode:I

    .line 7
    iput-object p1, p0, Lg/c/a/f/e/a/c$a;->queue:Lg/c/a/f/c/e;

    .line 8
    iput-boolean v1, p0, Lg/c/a/f/e/a/c$a;->done:Z

    .line 9
    iget-object p1, p0, Lg/c/a/f/e/a/c$a;->downstream:Lg/c/a/b/f;

    invoke-interface {p1, p0}, Lg/c/a/b/f;->onSubscribe(Lg/c/a/c/c;)V

    .line 10
    invoke-virtual {p0}, Lg/c/a/f/e/a/c$a;->schedule()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 11
    iput v0, p0, Lg/c/a/f/e/a/c$a;->sourceMode:I

    .line 12
    iput-object p1, p0, Lg/c/a/f/e/a/c$a;->queue:Lg/c/a/f/c/e;

    .line 13
    iget-object p1, p0, Lg/c/a/f/e/a/c$a;->downstream:Lg/c/a/b/f;

    invoke-interface {p1, p0}, Lg/c/a/b/f;->onSubscribe(Lg/c/a/c/c;)V

    return-void

    .line 14
    :cond_1
    new-instance p1, Lg/c/a/f/f/a;

    iget v0, p0, Lg/c/a/f/e/a/c$a;->bufferSize:I

    invoke-direct {p1, v0}, Lg/c/a/f/f/a;-><init>(I)V

    iput-object p1, p0, Lg/c/a/f/e/a/c$a;->queue:Lg/c/a/f/c/e;

    .line 15
    iget-object p1, p0, Lg/c/a/f/e/a/c$a;->downstream:Lg/c/a/b/f;

    invoke-interface {p1, p0}, Lg/c/a/b/f;->onSubscribe(Lg/c/a/c/c;)V

    :cond_2
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lg/c/a/f/e/a/c$a;->queue:Lg/c/a/f/c/e;

    invoke-interface {v0}, Lg/c/a/f/c/e;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lg/c/a/f/e/a/c$a;->outputFused:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/c/a/f/e/a/c$a;->outputFused:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lg/c/a/f/e/a/c$a;->drainFused()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lg/c/a/f/e/a/c$a;->drainNormal()V

    :goto_0
    return-void
.end method

.method schedule()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/c/a/f/e/a/c$a;->worker:Lg/c/a/b/g$b;

    invoke-virtual {v0, p0}, Lg/c/a/b/g$b;->a(Ljava/lang/Runnable;)Lg/c/a/c/c;

    :cond_0
    return-void
.end method
