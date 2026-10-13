.class public final Lg/c/a/f/g/b;
.super Lg/c/a/b/g;
.source "ComputationScheduler.java"

# interfaces
.implements Lg/c/a/f/g/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/c/a/f/g/b$c;,
        Lg/c/a/f/g/b$a;,
        Lg/c/a/f/g/b$b;
    }
.end annotation


# static fields
.field static final c:Lg/c/a/f/g/b$b;

.field static final d:Lg/c/a/f/g/g;

.field static final e:I

.field static final f:Lg/c/a/f/g/b$c;


# instance fields
.field final a:Ljava/util/concurrent/ThreadFactory;

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lg/c/a/f/g/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "rx3.computation-threads"

    invoke-static {v2, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lg/c/a/f/g/b;->a(II)I

    move-result v0

    sput v0, Lg/c/a/f/g/b;->e:I

    .line 2
    new-instance v0, Lg/c/a/f/g/b$c;

    new-instance v2, Lg/c/a/f/g/g;

    const-string v3, "RxComputationShutdown"

    invoke-direct {v2, v3}, Lg/c/a/f/g/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lg/c/a/f/g/b$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lg/c/a/f/g/b;->f:Lg/c/a/f/g/b$c;

    .line 3
    sget-object v0, Lg/c/a/f/g/b;->f:Lg/c/a/f/g/b$c;

    invoke-virtual {v0}, Lg/c/a/f/g/e;->dispose()V

    const-string v0, "rx3.computation-priority"

    const/4 v2, 0x5

    .line 4
    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xa

    .line 5
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6
    new-instance v3, Lg/c/a/f/g/g;

    const-string v4, "RxComputationThreadPool"

    invoke-direct {v3, v4, v0, v2}, Lg/c/a/f/g/g;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lg/c/a/f/g/b;->d:Lg/c/a/f/g/g;

    .line 7
    new-instance v0, Lg/c/a/f/g/b$b;

    sget-object v2, Lg/c/a/f/g/b;->d:Lg/c/a/f/g/g;

    invoke-direct {v0, v1, v2}, Lg/c/a/f/g/b$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lg/c/a/f/g/b;->c:Lg/c/a/f/g/b$b;

    .line 8
    sget-object v0, Lg/c/a/f/g/b;->c:Lg/c/a/f/g/b$b;

    invoke-virtual {v0}, Lg/c/a/f/g/b$b;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lg/c/a/f/g/b;->d:Lg/c/a/f/g/g;

    invoke-direct {p0, v0}, Lg/c/a/f/g/b;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lg/c/a/b/g;-><init>()V

    .line 3
    iput-object p1, p0, Lg/c/a/f/g/b;->a:Ljava/util/concurrent/ThreadFactory;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lg/c/a/f/g/b;->c:Lg/c/a/f/g/b$b;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lg/c/a/f/g/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {p0}, Lg/c/a/f/g/b;->b()V

    return-void
.end method

.method static a(II)I
    .locals 0

    if-lez p1, :cond_1

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public a()Lg/c/a/b/g$b;
    .locals 2
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lg/c/a/f/g/b$a;

    iget-object v1, p0, Lg/c/a/f/g/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/c/a/f/g/b$b;

    invoke-virtual {v1}, Lg/c/a/f/g/b$b;->a()Lg/c/a/f/g/b$c;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/c/a/f/g/b$a;-><init>(Lg/c/a/f/g/b$c;)V

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lg/c/a/c/c;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lg/c/a/f/g/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/c/a/f/g/b$b;

    invoke-virtual {v0}, Lg/c/a/f/g/b$b;->a()Lg/c/a/f/g/b$c;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lg/c/a/f/g/e;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lg/c/a/c/c;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 3

    .line 1
    new-instance v0, Lg/c/a/f/g/b$b;

    sget v1, Lg/c/a/f/g/b;->e:I

    iget-object v2, p0, Lg/c/a/f/g/b;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2}, Lg/c/a/f/g/b$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 2
    iget-object v1, p0, Lg/c/a/f/g/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lg/c/a/f/g/b;->c:Lg/c/a/f/g/b$b;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lg/c/a/f/g/b$b;->b()V

    :cond_0
    return-void
.end method
