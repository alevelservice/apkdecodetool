.class public Le/a/a/a/a/e;
.super Le/a/a/a/a/a;
.source "MainDispatcher.java"

# interfaces
.implements Le/a/a/a/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/a/a/e$a;
    }
.end annotation


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

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Le/a/a/a/a/a;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/a/a/a/a/a;-><init>(Le/a/a/a/a/a;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Le/a/a/a/a/e;->h:Ljava/util/concurrent/BlockingQueue;

    .line 3
    new-instance p1, Le/a/a/a/a/e$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Le/a/a/a/a/e$a;-><init>(Le/a/a/a/a/e;Landroid/os/Looper;)V

    iput-object p1, p0, Le/a/a/a/a/e;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Le/a/a/a/a/e;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/a/a/a/e;->h:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method


# virtual methods
.method public a(Le/a/a/a/h;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Le/a/a/a/h;->c()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Le/a/a/a/c/a;Le/a/a/a/h;)Le/a/a/a/f;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/a/a/a/a/a;->c(Le/a/a/a/c/a;Le/a/a/a/h;)Le/a/a/a/f;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/a/a/a/e;->h:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Le/a/a/a/a/g;

    invoke-direct {v1, p1, p2}, Le/a/a/a/a/g;-><init>(Le/a/a/a/c/a;Le/a/a/a/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Le/a/a/a/a/e;->i:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Le/a/a/a/f;->SUCCESS:Le/a/a/a/f;

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Le/a/a/a/e/a;

    const-string p2, "Dispatcher Event Fail"

    invoke-direct {p1, p2}, Le/a/a/a/e/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method
