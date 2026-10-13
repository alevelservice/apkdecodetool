.class public final Lkotlinx/coroutines/e2/b;
.super Ljava/lang/Object;
.source "Undispatched.kt"


# direct methods
.method public static final a(Lkotlin/jvm/c/b;Lkotlin/coroutines/c;)V
    .locals 3
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

    const-string v0, "$this$startCoroutineUndispatched"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/g;->a(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    .line 2
    :try_start_0
    invoke-interface {p1}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/x;->b(Lkotlin/coroutines/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    .line 4
    :try_start_1
    invoke-static {p0, v2}, Lkotlin/jvm/d/p;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/c/b;

    invoke-interface {p0, p1}, Lkotlin/jvm/c/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    invoke-static {}, Lkotlin/coroutines/h/b;->a()Ljava/lang/Object;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 7
    sget-object v0, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p0}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_3
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 9
    sget-object v0, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p0}, Lkotlin/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final a(Lkotlin/jvm/c/c;Ljava/lang/Object;Lkotlin/coroutines/c;)V
    .locals 3
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

    const-string v0, "$this$startCoroutineUndispatched"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/g;->a(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    .line 11
    :try_start_0
    invoke-interface {p2}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/x;->b(Lkotlin/coroutines/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x2

    .line 13
    :try_start_1
    invoke-static {p0, v2}, Lkotlin/jvm/d/p;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/c/c;

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/c/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    invoke-static {}, Lkotlin/coroutines/h/b;->a()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_0

    .line 16
    sget-object p1, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p0}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 17
    :try_start_3
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 18
    sget-object p1, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p0}, Lkotlin/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
