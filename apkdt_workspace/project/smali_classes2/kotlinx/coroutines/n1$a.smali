.class final Lkotlinx/coroutines/n1$a;
.super Lkotlinx/coroutines/i;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final l:Lkotlinx/coroutines/n1;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/c;Lkotlinx/coroutines/n1;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/n1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-TT;>;",
            "Lkotlinx/coroutines/n1;",
            ")V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/i;-><init>(Lkotlin/coroutines/c;I)V

    iput-object p2, p0, Lkotlinx/coroutines/n1$a;->l:Lkotlinx/coroutines/n1;

    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/g1;)Ljava/lang/Throwable;
    .locals 2
    .param p1    # Lkotlinx/coroutines/g1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/n1$a;->l:Lkotlinx/coroutines/n1;

    invoke-virtual {v0}, Lkotlinx/coroutines/n1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/n1$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/n1$c;

    iget-object v1, v1, Lkotlinx/coroutines/n1$c;->rootCause:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/r;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/r;

    iget-object p1, v0, Lkotlinx/coroutines/r;->a:Ljava/lang/Throwable;

    return-object p1

    .line 4
    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/g1;->j()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method protected g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "AwaitContinuation"

    return-object v0
.end method
