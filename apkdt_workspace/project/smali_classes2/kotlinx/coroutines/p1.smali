.class final Lkotlinx/coroutines/p1;
.super Lkotlinx/coroutines/n0;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/n0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private h:Lkotlin/jvm/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/c/c<",
            "-",
            "Lkotlinx/coroutines/e0;",
            "-",
            "Lkotlin/coroutines/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/f;Lkotlin/jvm/c/c;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/f;",
            "Lkotlin/jvm/c/c<",
            "-",
            "Lkotlinx/coroutines/e0;",
            "-",
            "Lkotlin/coroutines/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/n0;-><init>(Lkotlin/coroutines/f;Z)V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/p1;->h:Lkotlin/jvm/c/c;

    return-void
.end method


# virtual methods
.method protected o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/p1;->h:Lkotlin/jvm/c/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lkotlinx/coroutines/p1;->h:Lkotlin/jvm/c/c;

    .line 3
    invoke-static {v0, p0, p0}, Lkotlinx/coroutines/e2/a;->a(Lkotlin/jvm/c/c;Ljava/lang/Object;Lkotlin/coroutines/c;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already started"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
