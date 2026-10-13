.class public abstract Lkotlinx/coroutines/x0;
.super Lkotlinx/coroutines/w0;
.source "EventLoop.kt"

# interfaces
.implements Lkotlinx/coroutines/o0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/x0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008 \u0018\u00002\u00020\u00012\u00020\u0002:\u0003678B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\n\u0010\r\u001a\u00060\u0007j\u0002`\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0011\u001a\u00020\u00052\n\u0010\u0010\u001a\u00060\u0007j\u0002`\u0008\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001b\u0010\u0014\u001a\u00020\u00132\n\u0010\u0010\u001a\u00060\u0007j\u0002`\u0008H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0004\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bH\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020 2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J%\u0010&\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u00162\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00050$H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u0017\u0010(\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008*\u0010\u0004J\u000f\u0010+\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008+\u0010\u0004R\u0016\u0010,\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u0010.\u001a\u00020\u00138T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u0016\u00101\u001a\u00020\u00168T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u0010\u0018R\u0016\u00105\u001a\u0002028$@$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u00083\u00104\u00a8\u00069"
    }
    d2 = {
        "Lkotlinx/coroutines/EventLoopImplBase;",
        "Lkotlinx/coroutines/EventLoop;",
        "Lkotlinx/coroutines/Delay;",
        "<init>",
        "()V",
        "",
        "closeQueue",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "dequeue",
        "()Ljava/lang/Runnable;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "block",
        "dispatch",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V",
        "task",
        "enqueue",
        "(Ljava/lang/Runnable;)V",
        "",
        "enqueueImpl",
        "(Ljava/lang/Runnable;)Z",
        "",
        "processNextEvent",
        "()J",
        "rescheduleAllDelayed",
        "resetAll",
        "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;",
        "delayedTask",
        "schedule$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V",
        "schedule",
        "",
        "scheduleImpl",
        "(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I",
        "timeMillis",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "continuation",
        "scheduleResumeAfterDelay",
        "(JLkotlinx/coroutines/CancellableContinuation;)V",
        "shouldUnpark",
        "(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)Z",
        "shutdown",
        "unpark",
        "isCompleted",
        "Z",
        "isEmpty",
        "()Z",
        "getNextTime",
        "nextTime",
        "Ljava/lang/Thread;",
        "getThread",
        "()Ljava/lang/Thread;",
        "thread",
        "DelayedResumeTask",
        "DelayedRunnableTask",
        "DelayedTask",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _delayed:Ljava/lang/Object;

.field private volatile _queue:Ljava/lang/Object;

.field private volatile isCompleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lkotlinx/coroutines/x0;

    const-string v2, "_queue"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/x0;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_delayed"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/x0;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/w0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lkotlinx/coroutines/x0;->_queue:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lkotlinx/coroutines/x0;->_delayed:Ljava/lang/Object;

    return-void
.end method

.method private final A()Ljava/lang/Runnable;
    .locals 4

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/x0;->_queue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 2
    :cond_1
    instance-of v2, v0, Lkotlinx/coroutines/internal/m;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    .line 3
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/m;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/m;->e()Ljava/lang/Object;

    move-result-object v2

    .line 4
    sget-object v3, Lkotlinx/coroutines/internal/m;->g:Lkotlinx/coroutines/internal/t;

    if-eq v2, v3, :cond_2

    check-cast v2, Ljava/lang/Runnable;

    return-object v2

    .line 5
    :cond_2
    sget-object v2, Lkotlinx/coroutines/x0;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/m;->d()Lkotlinx/coroutines/internal/m;

    move-result-object v1

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Lkotlin/r;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */"

    invoke-direct {v0, v1}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/internal/t;

    move-result-object v2

    if-ne v0, v2, :cond_5

    return-object v1

    .line 8
    :cond_5
    sget-object v2, Lkotlinx/coroutines/x0;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Runnable;

    return-object v0

    :cond_6
    new-instance v0, Lkotlin/r;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {v0, v1}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private final B()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/x0;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/y;->d()Lkotlinx/coroutines/internal/z;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/x0$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/x0$a;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final C()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/x0;->s()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 3
    invoke-static {}, Lkotlinx/coroutines/c2;->a()Lkotlinx/coroutines/b2;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlinx/coroutines/b2;->a(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/x0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lkotlinx/coroutines/x0;->isCompleted:Z

    return p0
.end method

.method private final b(Lkotlinx/coroutines/x0$a;)I
    .locals 3

    .line 4
    iget-boolean v0, p0, Lkotlinx/coroutines/x0;->isCompleted:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/x0;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/y;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lkotlinx/coroutines/x0;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v1, Lkotlinx/coroutines/internal/y;

    invoke-direct {v1}, Lkotlinx/coroutines/internal/y;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lkotlinx/coroutines/x0;->_delayed:Ljava/lang/Object;

    if-eqz v0, :cond_2

    check-cast v0, Lkotlinx/coroutines/internal/y;

    .line 8
    :goto_0
    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/x0$a;->a(Lkotlinx/coroutines/internal/y;Lkotlinx/coroutines/x0;)I

    move-result p1

    return p1

    .line 9
    :cond_2
    invoke-static {}, Lkotlin/jvm/d/h;->a()V

    throw v2
.end method

.method private final c(Ljava/lang/Runnable;)Z
    .locals 5

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/x0;->_queue:Ljava/lang/Object;

    .line 3
    iget-boolean v1, p0, Lkotlinx/coroutines/x0;->isCompleted:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 4
    sget-object v0, Lkotlinx/coroutines/x0;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_2
    instance-of v3, v0, Lkotlinx/coroutines/internal/m;

    if-eqz v3, :cond_7

    if-eqz v0, :cond_6

    .line 6
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/internal/m;

    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/m;->a(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v1, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    .line 7
    :cond_4
    sget-object v1, Lkotlinx/coroutines/x0;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/m;->d()Lkotlinx/coroutines/internal/m;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return v1

    .line 8
    :cond_6
    new-instance p1, Lkotlin/r;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */"

    invoke-direct {p1, v0}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/internal/t;

    move-result-object v3

    if-ne v0, v3, :cond_8

    return v2

    .line 10
    :cond_8
    new-instance v2, Lkotlinx/coroutines/internal/m;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lkotlinx/coroutines/internal/m;-><init>(IZ)V

    if-eqz v0, :cond_9

    .line 11
    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/internal/m;->a(Ljava/lang/Object;)I

    .line 12
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/internal/m;->a(Ljava/lang/Object;)I

    .line 13
    sget-object v3, Lkotlinx/coroutines/x0;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 14
    :cond_9
    new-instance p1, Lkotlin/r;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {p1, v0}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final c(Lkotlinx/coroutines/x0$a;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/x0;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/y;->c()Lkotlinx/coroutines/internal/z;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/x0$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private final z()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lkotlinx/coroutines/x0;->isCompleted:Z

    sget-boolean v1, Lkotlin/u;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Assertion failed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/x0;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Lkotlinx/coroutines/x0;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/internal/t;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/internal/m;

    if-eqz v1, :cond_3

    .line 5
    check-cast v0, Lkotlinx/coroutines/internal/m;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->a()Z

    return-void

    .line 6
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/internal/t;

    move-result-object v1

    if-ne v0, v1, :cond_4

    return-void

    .line 7
    :cond_4
    new-instance v1, Lkotlinx/coroutines/internal/m;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/internal/m;-><init>(IZ)V

    if-eqz v0, :cond_5

    .line 8
    move-object v2, v0

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/m;->a(Ljava/lang/Object;)I

    .line 9
    sget-object v2, Lkotlinx/coroutines/x0;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 10
    :cond_5
    new-instance v0, Lkotlin/r;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {v0, v1}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/f;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/x0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lkotlinx/coroutines/x0$a;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/x0$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "delayedTask"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/x0;->b(Lkotlinx/coroutines/x0$a;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected result"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    sget-object v0, Lkotlinx/coroutines/k0;->k:Lkotlinx/coroutines/k0;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/x0;->a(Lkotlinx/coroutines/x0$a;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lkotlinx/coroutines/x0;->c(Lkotlinx/coroutines/x0$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lkotlinx/coroutines/x0;->C()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/x0;->c(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/x0;->C()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lkotlinx/coroutines/k0;->k:Lkotlinx/coroutines/k0;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/x0;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected o()J
    .locals 6

    .line 1
    invoke-super {p0}, Lkotlinx/coroutines/w0;->o()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/x0;->_queue:Ljava/lang/Object;

    const-wide v4, 0x7fffffffffffffffL

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/internal/m;

    if-eqz v1, :cond_4

    check-cast v0, Lkotlinx/coroutines/internal/m;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->c()Z

    move-result v0

    if-nez v0, :cond_2

    return-wide v2

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/x0;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/y;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/y;->c()Lkotlinx/coroutines/internal/z;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/x0$a;

    if-eqz v0, :cond_3

    .line 6
    iget-wide v0, v0, Lkotlinx/coroutines/x0$a;->g:J

    invoke-static {}, Lkotlinx/coroutines/c2;->a()Lkotlinx/coroutines/b2;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/b2;->b()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Lkotlin/y/n;->a(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_3
    return-wide v4

    .line 7
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/internal/t;

    move-result-object v1

    if-ne v0, v1, :cond_5

    return-wide v4

    :cond_5
    return-wide v2
.end method

.method protected abstract s()Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected shutdown()V
    .locals 5

    .line 1
    sget-object v0, Lkotlinx/coroutines/a2;->b:Lkotlinx/coroutines/a2;

    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->b()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lkotlinx/coroutines/x0;->isCompleted:Z

    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/x0;->z()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/x0;->u()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/x0;->B()V

    return-void
.end method

.method protected t()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/w0;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/x0;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/y;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/y;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/x0;->_queue:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 5
    :cond_2
    instance-of v3, v0, Lkotlinx/coroutines/internal/m;

    if-eqz v3, :cond_3

    check-cast v0, Lkotlinx/coroutines/internal/m;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->c()Z

    move-result v1

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/internal/t;

    move-result-object v3

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public u()J
    .locals 7

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/w0;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/x0;->o()J

    move-result-wide v0

    return-wide v0

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/x0;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/y;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/y;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4
    invoke-static {}, Lkotlinx/coroutines/c2;->a()Lkotlinx/coroutines/b2;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/b2;->b()J

    move-result-wide v1

    .line 5
    :goto_0
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/y;->a()Lkotlinx/coroutines/internal/z;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 7
    check-cast v3, Lkotlinx/coroutines/x0$a;

    .line 8
    invoke-virtual {v3, v1, v2}, Lkotlinx/coroutines/x0$a;->a(J)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 9
    invoke-direct {p0, v3}, Lkotlinx/coroutines/x0;->c(Ljava/lang/Runnable;)Z

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v0, v6}, Lkotlinx/coroutines/internal/y;->a(I)Lkotlinx/coroutines/internal/z;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    .line 11
    :cond_2
    monitor-exit v0

    goto :goto_2

    .line 12
    :cond_3
    monitor-exit v0

    .line 13
    :goto_2
    check-cast v4, Lkotlinx/coroutines/x0$a;

    if-eqz v4, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    throw v1

    .line 15
    :cond_4
    invoke-direct {p0}, Lkotlinx/coroutines/x0;->A()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 16
    :cond_5
    invoke-virtual {p0}, Lkotlinx/coroutines/x0;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final v()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lkotlinx/coroutines/x0;->_queue:Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Lkotlinx/coroutines/x0;->_delayed:Ljava/lang/Object;

    return-void
.end method
