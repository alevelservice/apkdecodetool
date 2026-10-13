.class public Lkotlinx/coroutines/i;
.super Lkotlinx/coroutines/r0;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lkotlinx/coroutines/h;
.implements Lkotlin/coroutines/jvm/internal/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/r0<",
        "TT;>;",
        "Lkotlinx/coroutines/h<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/e;"
    }
.end annotation

.annotation build Lkotlin/PublishedApi;
.end annotation


# static fields
.field private static final j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _decision:I

.field private volatile _state:Ljava/lang/Object;

.field private final h:Lkotlin/coroutines/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Lkotlin/coroutines/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile parentHandle:Lkotlinx/coroutines/t0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/i;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/i;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Lkotlinx/coroutines/i;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/i;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/c;I)V
    .locals 1
    .param p1    # Lkotlin/coroutines/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-TT;>;I)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/r0;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/i;->i:Lkotlin/coroutines/c;

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/i;->i:Lkotlin/coroutines/c;

    invoke-interface {p1}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/i;->h:Lkotlin/coroutines/f;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lkotlinx/coroutines/i;->_decision:I

    .line 4
    sget-object p1, Lkotlinx/coroutines/b;->e:Lkotlinx/coroutines/b;

    iput-object p1, p0, Lkotlinx/coroutines/i;->_state:Ljava/lang/Object;

    return-void
.end method

.method private final a(Ljava/lang/Object;I)Lkotlinx/coroutines/k;
    .locals 3

    .line 35
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/i;->_state:Ljava/lang/Object;

    .line 36
    instance-of v1, v0, Lkotlinx/coroutines/u1;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 37
    sget-object v1, Lkotlinx/coroutines/i;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/i;->h()V

    .line 39
    invoke-direct {p0, p2}, Lkotlinx/coroutines/i;->a(I)V

    return-object v2

    .line 40
    :cond_1
    instance-of p2, v0, Lkotlinx/coroutines/k;

    if-eqz p2, :cond_2

    .line 41
    check-cast v0, Lkotlinx/coroutines/k;

    invoke-virtual {v0}, Lkotlinx/coroutines/k;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v0

    .line 42
    :cond_2
    invoke-direct {p0, p1}, Lkotlinx/coroutines/i;->c(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method private final a(I)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lkotlinx/coroutines/i;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/q0;->a(Lkotlinx/coroutines/r0;I)V

    return-void
.end method

.method private final a(Lkotlin/jvm/c/b;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/c/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/t;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final b(Lkotlin/jvm/c/b;)Lkotlinx/coroutines/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/c/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/t;",
            ">;)",
            "Lkotlinx/coroutines/f;"
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/f;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/f;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/d1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/d1;-><init>(Lkotlin/jvm/c/b;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private final c(Ljava/lang/Object;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already resumed, but proposed with update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/i;->parentHandle:Lkotlinx/coroutines/t0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lkotlinx/coroutines/t0;->dispose()V

    .line 3
    sget-object v0, Lkotlinx/coroutines/t1;->e:Lkotlinx/coroutines/t1;

    iput-object v0, p0, Lkotlinx/coroutines/i;->parentHandle:Lkotlinx/coroutines/t0;

    :cond_0
    return-void
.end method

.method private final i()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/i;->i:Lkotlin/coroutines/c;

    invoke-interface {v0}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/g1;->d:Lkotlinx/coroutines/g1$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/g1;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Lkotlinx/coroutines/g1;->start()Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v4, Lkotlinx/coroutines/l;

    invoke-direct {v4, v1, p0}, Lkotlinx/coroutines/l;-><init>(Lkotlinx/coroutines/g1;Lkotlinx/coroutines/i;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 5
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/g1$a;->a(Lkotlinx/coroutines/g1;ZZLkotlin/jvm/c/b;ILjava/lang/Object;)Lkotlinx/coroutines/t0;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lkotlinx/coroutines/i;->parentHandle:Lkotlinx/coroutines/t0;

    .line 7
    invoke-virtual {p0}, Lkotlinx/coroutines/i;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0}, Lkotlinx/coroutines/t0;->dispose()V

    .line 9
    sget-object v0, Lkotlinx/coroutines/t1;->e:Lkotlinx/coroutines/t1;

    iput-object v0, p0, Lkotlinx/coroutines/i;->parentHandle:Lkotlinx/coroutines/t0;

    :cond_1
    return-void
.end method

.method private final j()Z
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/i;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    sget-object v0, Lkotlinx/coroutines/i;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final k()Z
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/i;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    sget-object v0, Lkotlinx/coroutines/i;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/g1;)Ljava/lang/Throwable;
    .locals 1
    .param p1    # Lkotlinx/coroutines/g1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Lkotlinx/coroutines/g1;->j()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Throwable;I)Lkotlinx/coroutines/k;
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lkotlinx/coroutines/r;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lkotlinx/coroutines/r;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/d/e;)V

    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/i;->a(Ljava/lang/Object;I)Lkotlinx/coroutines/k;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/u;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    check-cast p1, Lkotlinx/coroutines/u;

    iget-object p1, p1, Lkotlinx/coroutines/u;->b:Lkotlin/jvm/c/b;

    invoke-interface {p1, p2}, Lkotlin/jvm/c/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/i;->getContext()Lkotlin/coroutines/f;

    move-result-object p2

    .line 4
    new-instance v0, Lkotlinx/coroutines/w;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in cancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/w;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {p2, v0}, Lkotlinx/coroutines/b0;->a(Lkotlin/coroutines/f;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lkotlin/jvm/c/b;)V
    .locals 4
    .param p1    # Lkotlin/jvm/c/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/c/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v1, v0

    .line 21
    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/i;->_state:Ljava/lang/Object;

    .line 22
    instance-of v3, v2, Lkotlinx/coroutines/b;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/i;->b(Lkotlin/jvm/c/b;)Lkotlinx/coroutines/f;

    move-result-object v1

    .line 24
    :goto_0
    sget-object v3, Lkotlinx/coroutines/i;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 25
    :cond_2
    instance-of v1, v2, Lkotlinx/coroutines/f;

    if-nez v1, :cond_7

    .line 26
    instance-of v1, v2, Lkotlinx/coroutines/k;

    if-eqz v1, :cond_6

    .line 27
    move-object v1, v2

    check-cast v1, Lkotlinx/coroutines/k;

    invoke-virtual {v1}, Lkotlinx/coroutines/r;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28
    :try_start_0
    instance-of v1, v2, Lkotlinx/coroutines/r;

    if-nez v1, :cond_3

    move-object v2, v0

    :cond_3
    check-cast v2, Lkotlinx/coroutines/r;

    if-eqz v2, :cond_4

    iget-object v0, v2, Lkotlinx/coroutines/r;->a:Ljava/lang/Throwable;

    .line 29
    :cond_4
    invoke-interface {p1, v0}, Lkotlin/jvm/c/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 30
    invoke-virtual {p0}, Lkotlinx/coroutines/i;->getContext()Lkotlin/coroutines/f;

    move-result-object v0

    .line 31
    new-instance v1, Lkotlinx/coroutines/w;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in cancellation handler for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lkotlinx/coroutines/w;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    invoke-static {v0, v1}, Lkotlinx/coroutines/b0;->a(Lkotlin/coroutines/f;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 33
    :cond_5
    invoke-direct {p0, p1, v2}, Lkotlinx/coroutines/i;->a(Lkotlin/jvm/c/b;Ljava/lang/Object;)V

    throw v0

    :cond_6
    return-void

    .line 34
    :cond_7
    invoke-direct {p0, p1, v2}, Lkotlinx/coroutines/i;->a(Lkotlin/jvm/c/b;Ljava/lang/Object;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 11
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/i;->_state:Ljava/lang/Object;

    .line 12
    instance-of v1, v0, Lkotlinx/coroutines/u1;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 13
    :cond_0
    new-instance v1, Lkotlinx/coroutines/k;

    instance-of v3, v0, Lkotlinx/coroutines/f;

    invoke-direct {v1, p0, p1, v3}, Lkotlinx/coroutines/k;-><init>(Lkotlin/coroutines/c;Ljava/lang/Throwable;Z)V

    .line 14
    sget-object v4, Lkotlinx/coroutines/i;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 15
    :try_start_0
    check-cast v0, Lkotlinx/coroutines/f;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/g;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {p0}, Lkotlinx/coroutines/i;->getContext()Lkotlin/coroutines/f;

    move-result-object v0

    .line 17
    new-instance v1, Lkotlinx/coroutines/w;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in cancellation handler for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lkotlinx/coroutines/w;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    invoke-static {v0, v1}, Lkotlinx/coroutines/b0;->a(Lkotlin/coroutines/f;Ljava/lang/Throwable;)V

    .line 19
    :cond_2
    :goto_1
    invoke-direct {p0}, Lkotlinx/coroutines/i;->h()V

    .line 20
    invoke-direct {p0, v2}, Lkotlinx/coroutines/i;->a(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lkotlinx/coroutines/t;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/t;

    iget-object p1, p1, Lkotlinx/coroutines/t;->a:Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/u;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlinx/coroutines/u;

    iget-object p1, p1, Lkotlinx/coroutines/u;->a:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final b()Lkotlin/coroutines/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/i;->i:Lkotlin/coroutines/c;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/i;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 3
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/i;->i()V

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/coroutines/h/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/i;->e()Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lkotlinx/coroutines/r;

    if-nez v1, :cond_3

    .line 5
    iget v1, p0, Lkotlinx/coroutines/r0;->g:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/i;->getContext()Lkotlin/coroutines/f;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/g1;->d:Lkotlinx/coroutines/g1$b;

    invoke-interface {v1, v2}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/g1;

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v1}, Lkotlinx/coroutines/g1;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v1}, Lkotlinx/coroutines/g1;->j()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/i;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 10
    invoke-static {v1, p0}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Throwable;Lkotlin/coroutines/c;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 12
    :cond_3
    check-cast v0, Lkotlinx/coroutines/r;

    iget-object v0, v0, Lkotlinx/coroutines/r;->a:Ljava/lang/Throwable;

    invoke-static {v0, p0}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Throwable;Lkotlin/coroutines/c;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/i;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/i;->e()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/u1;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/e;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/i;->i:Lkotlin/coroutines/c;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/e;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlin/coroutines/jvm/internal/e;

    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/i;->h:Lkotlin/coroutines/f;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lkotlinx/coroutines/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lkotlinx/coroutines/r0;->g:I

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/i;->a(Ljava/lang/Object;I)Lkotlinx/coroutines/k;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/i;->i:Lkotlin/coroutines/c;

    invoke-static {v1}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/j0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
