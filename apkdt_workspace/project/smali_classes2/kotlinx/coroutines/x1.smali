.class public final Lkotlinx/coroutines/x1;
.super Ljava/lang/Object;
.source "ResumeMode.kt"


# direct methods
.method public static final a(Lkotlin/coroutines/c;Ljava/lang/Object;I)V
    .locals 2
    .param p0    # Lkotlin/coroutines/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/c<",
            "-TT;>;TT;I)V"
        }
    .end annotation

    const-string v0, "$this$resumeMode"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p0, 0x4

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    check-cast p0, Lkotlinx/coroutines/p0;

    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/p0;->getContext()Lkotlin/coroutines/f;

    move-result-object p2

    iget-object v0, p0, Lkotlinx/coroutines/p0;->j:Ljava/lang/Object;

    .line 4
    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/x;->b(Lkotlin/coroutines/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lkotlinx/coroutines/p0;->l:Lkotlin/coroutines/c;

    sget-object v1, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p1}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    .line 6
    sget-object p0, Lkotlin/t;->a:Lkotlin/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    throw p0

    .line 8
    :cond_2
    invoke-static {p0, p1}, Lkotlinx/coroutines/q0;->b(Lkotlin/coroutines/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {p0, p1}, Lkotlinx/coroutines/q0;->a(Lkotlin/coroutines/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_4
    sget-object p2, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p1}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final a(Lkotlin/coroutines/c;Ljava/lang/Throwable;I)V
    .locals 2
    .param p0    # Lkotlin/coroutines/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/c<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            "I)V"
        }
    .end annotation

    const-string v0, "$this$resumeWithExceptionMode"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p0, 0x4

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    check-cast p0, Lkotlinx/coroutines/p0;

    .line 13
    invoke-virtual {p0}, Lkotlinx/coroutines/p0;->getContext()Lkotlin/coroutines/f;

    move-result-object p2

    iget-object v0, p0, Lkotlinx/coroutines/p0;->j:Ljava/lang/Object;

    .line 14
    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/x;->b(Lkotlin/coroutines/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lkotlinx/coroutines/p0;->l:Lkotlin/coroutines/c;

    .line 16
    sget-object v1, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p1, p0}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Throwable;Lkotlin/coroutines/c;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    .line 17
    sget-object p0, Lkotlin/t;->a:Lkotlin/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    throw p0

    .line 19
    :cond_2
    invoke-static {p0, p1}, Lkotlinx/coroutines/q0;->b(Lkotlin/coroutines/c;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {p0, p1}, Lkotlinx/coroutines/q0;->a(Lkotlin/coroutines/c;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 21
    :cond_4
    sget-object p2, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p1}, Lkotlin/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final b(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
