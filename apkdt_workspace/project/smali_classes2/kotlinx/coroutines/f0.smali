.class public final Lkotlinx/coroutines/f0;
.super Ljava/lang/Object;
.source "CoroutineScope.kt"


# direct methods
.method public static final a(Lkotlin/coroutines/f;)Lkotlinx/coroutines/e0;
    .locals 3
    .param p0    # Lkotlin/coroutines/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/f;

    sget-object v1, Lkotlinx/coroutines/g1;->d:Lkotlinx/coroutines/g1$b;

    invoke-interface {p0, v1}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/k1;->a(Lkotlinx/coroutines/g1;ILjava/lang/Object;)Lkotlinx/coroutines/q;

    move-result-object v1

    invoke-interface {p0, v1}, Lkotlin/coroutines/f;->plus(Lkotlin/coroutines/f;)Lkotlin/coroutines/f;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/f;-><init>(Lkotlin/coroutines/f;)V

    return-object v0
.end method
