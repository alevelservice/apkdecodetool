.class final Lkotlinx/coroutines/w1;
.super Lkotlinx/coroutines/m1;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/m1<",
        "Lkotlinx/coroutines/n1;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lkotlinx/coroutines/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/n1;Lkotlinx/coroutines/i;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/n1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n1;",
            "Lkotlinx/coroutines/i<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/m1;-><init>(Lkotlinx/coroutines/g1;)V

    iput-object p2, p0, Lkotlinx/coroutines/w1;->i:Lkotlinx/coroutines/i;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/m1;->h:Lkotlinx/coroutines/g1;

    check-cast p1, Lkotlinx/coroutines/n1;

    invoke-virtual {p1}, Lkotlinx/coroutines/n1;->e()Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/b1;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3
    instance-of v0, p1, Lkotlinx/coroutines/r;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lkotlinx/coroutines/w1;->i:Lkotlinx/coroutines/i;

    check-cast p1, Lkotlinx/coroutines/r;

    iget-object p1, p1, Lkotlinx/coroutines/r;->a:Ljava/lang/Throwable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/i;->a(Ljava/lang/Throwable;I)Lkotlinx/coroutines/k;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/w1;->i:Lkotlinx/coroutines/i;

    invoke-static {p1}, Lkotlinx/coroutines/o1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p1}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/w1;->b(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/t;->a:Lkotlin/t;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeAwaitOnCompletion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/w1;->i:Lkotlinx/coroutines/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
