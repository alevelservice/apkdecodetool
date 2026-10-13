.class public final Lg/c/a/f/d/c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "LambdaObserver.java"

# interfaces
.implements Lg/c/a/b/f;
.implements Lg/c/a/c/c;
.implements Lg/c/a/g/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lg/c/a/c/c;",
        ">;",
        "Lg/c/a/b/f<",
        "TT;>;",
        "Lg/c/a/c/c;",
        "Lg/c/a/g/a;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x64a12a8486b15cccL


# instance fields
.field final onComplete:Lg/c/a/e/a;

.field final onError:Lg/c/a/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/e/d<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onNext:Lg/c/a/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/e/d<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final onSubscribe:Lg/c/a/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/e/d<",
            "-",
            "Lg/c/a/c/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/c/a/e/d;Lg/c/a/e/d;Lg/c/a/e/a;Lg/c/a/e/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/e/d<",
            "-TT;>;",
            "Lg/c/a/e/d<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lg/c/a/e/a;",
            "Lg/c/a/e/d<",
            "-",
            "Lg/c/a/c/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lg/c/a/f/d/c;->onNext:Lg/c/a/e/d;

    .line 3
    iput-object p2, p0, Lg/c/a/f/d/c;->onError:Lg/c/a/e/d;

    .line 4
    iput-object p3, p0, Lg/c/a/f/d/c;->onComplete:Lg/c/a/e/a;

    .line 5
    iput-object p4, p0, Lg/c/a/f/d/c;->onSubscribe:Lg/c/a/e/d;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 1
    invoke-static {p0}, Lg/c/a/f/a/a;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public hasCustomOnError()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lg/c/a/f/d/c;->onError:Lg/c/a/e/d;

    sget-object v1, Lg/c/a/f/b/a;->d:Lg/c/a/e/d;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisposed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lg/c/a/f/a/a;->DISPOSED:Lg/c/a/f/a/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/c/a/f/d/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lg/c/a/f/a/a;->DISPOSED:Lg/c/a/f/a/a;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lg/c/a/f/d/c;->onComplete:Lg/c/a/e/a;

    invoke-interface {v0}, Lg/c/a/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lg/c/a/d/b;->b(Ljava/lang/Throwable;)V

    .line 5
    invoke-static {v0}, Lg/c/a/h/a;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lg/c/a/f/d/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lg/c/a/f/a/a;->DISPOSED:Lg/c/a/f/a/a;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lg/c/a/f/d/c;->onError:Lg/c/a/e/d;

    invoke-interface {v0, p1}, Lg/c/a/e/d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lg/c/a/d/b;->b(Ljava/lang/Throwable;)V

    .line 5
    new-instance v1, Lg/c/a/d/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lg/c/a/d/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lg/c/a/h/a;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lg/c/a/h/a;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/c/a/f/d/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lg/c/a/f/d/c;->onNext:Lg/c/a/e/d;

    invoke-interface {v0, p1}, Lg/c/a/e/d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lg/c/a/d/b;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/c/a/c/c;

    invoke-interface {v0}, Lg/c/a/c/c;->dispose()V

    .line 5
    invoke-virtual {p0, p1}, Lg/c/a/f/d/c;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSubscribe(Lg/c/a/c/c;)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lg/c/a/f/a/a;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lg/c/a/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lg/c/a/f/d/c;->onSubscribe:Lg/c/a/e/d;

    invoke-interface {v0, p0}, Lg/c/a/e/d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lg/c/a/d/b;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-interface {p1}, Lg/c/a/c/c;->dispose()V

    .line 5
    invoke-virtual {p0, v0}, Lg/c/a/f/d/c;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
