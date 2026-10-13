.class public final Lkotlinx/coroutines/j;
.super Ljava/lang/Object;
.source "CancellableContinuation.kt"


# direct methods
.method public static final a(Lkotlinx/coroutines/h;Lkotlinx/coroutines/t0;)V
    .locals 1
    .param p0    # Lkotlinx/coroutines/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/t0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/h<",
            "*>;",
            "Lkotlinx/coroutines/t0;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
    .end annotation

    const-string v0, "$this$disposeOnCancellation"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handle"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlinx/coroutines/u0;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/u0;-><init>(Lkotlinx/coroutines/t0;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/h;->a(Lkotlin/jvm/c/b;)V

    return-void
.end method
