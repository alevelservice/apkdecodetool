.class public Le/a/a/a/a/b;
.super Le/a/a/a/a/a;
.source "AsyncDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private h:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Le/a/a/a/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Le/a/a/a/a/a;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/a/a/a/a/a;-><init>(Le/a/a/a/a/a;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Le/a/a/a/a/b;->h:Ljava/util/concurrent/BlockingQueue;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/a/a/a/a/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a(Le/a/a/a/h;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Le/a/a/a/h;->c()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Le/a/a/a/c/a;Le/a/a/a/h;)Le/a/a/a/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/a/a/b;->h:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Le/a/a/a/a/g;

    invoke-direct {v1, p1, p2}, Le/a/a/a/a/g;-><init>(Le/a/a/a/c/a;Le/a/a/a/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Le/a/a/a/a/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/a/a/a/a;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    sget-object p1, Le/a/a/a/f;->SUCCESS:Le/a/a/a/f;

    return-object p1
.end method

.method public run()V
    .locals 3

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Le/a/a/a/a/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/a/a/a/b;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/a/a/g;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Le/a/a/a/a/g;->event:Le/a/a/a/c/a;

    iget-object v0, v0, Le/a/a/a/a/g;->subscriber:Le/a/a/a/h;

    invoke-virtual {p0, v1, v0}, Le/a/a/a/a/a;->c(Le/a/a/a/c/a;Le/a/a/a/h;)Le/a/a/a/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Le/a/a/a/a/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_1
    return-void
.end method
