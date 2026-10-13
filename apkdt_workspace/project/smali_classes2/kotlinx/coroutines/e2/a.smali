.class public final Lkotlinx/coroutines/e2/a;
.super Ljava/lang/Object;
.source "Cancellable.kt"


# direct methods
.method public static final a(Lkotlin/jvm/c/b;Lkotlin/coroutines/c;)V
    .locals 1
    .param p0    # Lkotlin/jvm/c/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/c/b<",
            "-",
            "Lkotlin/coroutines/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "$this$startCoroutineCancellable"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lkotlin/coroutines/h/b;->a(Lkotlin/jvm/c/b;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p0

    invoke-static {p0}, Lkotlin/coroutines/h/b;->a(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p0

    sget-object v0, Lkotlin/t;->a:Lkotlin/t;

    invoke-static {p0, v0}, Lkotlinx/coroutines/q0;->a(Lkotlin/coroutines/c;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    sget-object v0, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p0}, Lkotlin/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final a(Lkotlin/jvm/c/c;Ljava/lang/Object;Lkotlin/coroutines/c;)V
    .locals 1
    .param p0    # Lkotlin/jvm/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/c/c<",
            "-TR;-",
            "Lkotlin/coroutines/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lkotlin/coroutines/c<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "$this$startCoroutineCancellable"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-static {p0, p1, p2}, Lkotlin/coroutines/h/b;->a(Lkotlin/jvm/c/c;Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p0

    invoke-static {p0}, Lkotlin/coroutines/h/b;->a(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p0

    sget-object p1, Lkotlin/t;->a:Lkotlin/t;

    invoke-static {p0, p1}, Lkotlinx/coroutines/q0;->a(Lkotlin/coroutines/c;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    sget-object p1, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p0}, Lkotlin/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
