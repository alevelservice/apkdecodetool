.class final Lg/c/a/f/e/a/d$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableSubscribeOn.java"

# interfaces
.implements Lg/c/a/b/f;
.implements Lg/c/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/a/f/e/a/d;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lg/c/a/c/c;",
        ">;",
        "Lg/c/a/b/f<",
        "TT;>;",
        "Lg/c/a/c/c;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x70559c6a66be0138L


# instance fields
.field final downstream:Lg/c/a/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/b/f<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lg/c/a/c/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lg/c/a/b/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/b/f<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lg/c/a/f/e/a/d$a;->downstream:Lg/c/a/b/f;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lg/c/a/f/e/a/d$a;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/c/a/f/e/a/d$a;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lg/c/a/f/a/a;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    invoke-static {p0}, Lg/c/a/f/a/a;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/c/a/c/c;

    invoke-static {v0}, Lg/c/a/f/a/a;->isDisposed(Lg/c/a/c/c;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/c/a/f/e/a/d$a;->downstream:Lg/c/a/b/f;

    invoke-interface {v0}, Lg/c/a/b/f;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/c/a/f/e/a/d$a;->downstream:Lg/c/a/b/f;

    invoke-interface {v0, p1}, Lg/c/a/b/f;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lg/c/a/f/e/a/d$a;->downstream:Lg/c/a/b/f;

    invoke-interface {v0, p1}, Lg/c/a/b/f;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lg/c/a/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/c/a/f/e/a/d$a;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lg/c/a/f/a/a;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lg/c/a/c/c;)Z

    return-void
.end method

.method setDisposable(Lg/c/a/c/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lg/c/a/f/a/a;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lg/c/a/c/c;)Z

    return-void
.end method
