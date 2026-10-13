.class public abstract Lkotlinx/coroutines/w0;
.super Lkotlinx/coroutines/z;
.source "EventLoop.common.kt"


# instance fields
.field private e:J

.field private f:Z

.field private g:Lkotlinx/coroutines/internal/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/b<",
            "Lkotlinx/coroutines/r0<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/z;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlinx/coroutines/w0;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/w0;->b(Z)V

    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final c(Z)J
    .locals 2

    if-eqz p1, :cond_0

    const-wide v0, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/r0;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/r0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/r0<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/w0;->g:Lkotlinx/coroutines/internal/b;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lkotlinx/coroutines/internal/b;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/b;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/w0;->g:Lkotlinx/coroutines/internal/b;

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 6
    iget-wide v0, p0, Lkotlinx/coroutines/w0;->e:J

    invoke-direct {p0, p1}, Lkotlinx/coroutines/w0;->c(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/w0;->e:J

    .line 7
    iget-wide v0, p0, Lkotlinx/coroutines/w0;->e:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    return-void

    :cond_0
    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 8
    iget-boolean p1, p0, Lkotlinx/coroutines/w0;->f:Z

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lkotlinx/coroutines/w0;->shutdown()V

    :cond_2
    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Extra decrementUseCount"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Z)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/w0;->e:J

    invoke-direct {p0, p1}, Lkotlinx/coroutines/w0;->c(Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/w0;->e:J

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lkotlinx/coroutines/w0;->f:Z

    :cond_0
    return-void
.end method

.method protected o()J
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/w0;->g:Lkotlinx/coroutines/internal/b;

    const-wide v1, 0x7fffffffffffffffL

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public final p()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/w0;->e:J

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lkotlinx/coroutines/w0;->c(Z)J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/w0;->g:Lkotlinx/coroutines/internal/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/w0;->g:Lkotlinx/coroutines/internal/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/r0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/r0;->run()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected shutdown()V
    .locals 0

    return-void
.end method
