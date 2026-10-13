.class public Lkotlinx/coroutines/f2/d;
.super Lkotlinx/coroutines/z0;
.source "Dispatcher.kt"


# annotations
.annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
.end annotation


# instance fields
.field private e:Lkotlinx/coroutines/f2/a;

.field private final f:I

.field private final g:I

.field private final h:J

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 1
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "schedulerName"

    invoke-static {p5, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/z0;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/f2/d;->f:I

    iput p2, p0, Lkotlinx/coroutines/f2/d;->g:I

    iput-wide p3, p0, Lkotlinx/coroutines/f2/d;->h:J

    iput-object p5, p0, Lkotlinx/coroutines/f2/d;->i:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/f2/d;->o()Lkotlinx/coroutines/f2/a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/f2/d;->e:Lkotlinx/coroutines/f2/a;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "schedulerName"

    invoke-static {p3, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-wide v4, Lkotlinx/coroutines/f2/m;->e:J

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/f2/d;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;ILkotlin/jvm/d/e;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 3
    sget p1, Lkotlinx/coroutines/f2/m;->c:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 4
    sget p2, Lkotlinx/coroutines/f2/m;->d:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const-string p3, "DefaultDispatcher"

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/f2/d;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method private final o()Lkotlinx/coroutines/f2/a;
    .locals 7

    .line 1
    new-instance v6, Lkotlinx/coroutines/f2/a;

    iget v1, p0, Lkotlinx/coroutines/f2/d;->f:I

    iget v2, p0, Lkotlinx/coroutines/f2/d;->g:I

    iget-wide v3, p0, Lkotlinx/coroutines/f2/d;->h:J

    iget-object v5, p0, Lkotlinx/coroutines/f2/d;->i:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/f2/a;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Lkotlinx/coroutines/f2/j;Z)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/f2/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/f2/d;->e:Lkotlinx/coroutines/f2/a;

    invoke-virtual {v0, p1, p2, p3}, Lkotlinx/coroutines/f2/a;->a(Ljava/lang/Runnable;Lkotlinx/coroutines/f2/j;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object p3, Lkotlinx/coroutines/k0;->k:Lkotlinx/coroutines/k0;

    iget-object v0, p0, Lkotlinx/coroutines/f2/d;->e:Lkotlinx/coroutines/f2/a;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/f2/a;->a(Ljava/lang/Runnable;Lkotlinx/coroutines/f2/j;)Lkotlinx/coroutines/f2/i;

    move-result-object p1

    invoke-virtual {p3, p1}, Lkotlinx/coroutines/x0;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public a(Lkotlin/coroutines/f;Ljava/lang/Runnable;)V
    .locals 7
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

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/f2/d;->e:Lkotlinx/coroutines/f2/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f2/a;->a(Lkotlinx/coroutines/f2/a;Ljava/lang/Runnable;Lkotlinx/coroutines/f2/j;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lkotlinx/coroutines/k0;->k:Lkotlinx/coroutines/k0;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/x0;->a(Lkotlin/coroutines/f;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final c(I)Lkotlinx/coroutines/z;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1
    new-instance v0, Lkotlinx/coroutines/f2/f;

    sget-object v1, Lkotlinx/coroutines/f2/l;->PROBABLY_BLOCKING:Lkotlinx/coroutines/f2/l;

    invoke-direct {v0, p0, p1, v1}, Lkotlinx/coroutines/f2/f;-><init>(Lkotlinx/coroutines/f2/d;ILkotlinx/coroutines/f2/l;)V

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected positive parallelism level, but have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
