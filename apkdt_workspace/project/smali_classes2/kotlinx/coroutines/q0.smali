.class public final Lkotlinx/coroutines/q0;
.super Ljava/lang/Object;
.source "Dispatched.kt"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/t;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/q0;->a:Lkotlinx/coroutines/internal/t;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/t;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/q0;->a:Lkotlinx/coroutines/internal/t;

    return-object v0
.end method

.method public static final a(Lkotlin/coroutines/c;Ljava/lang/Object;)V
    .locals 6
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
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "$this$resumeCancellable"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    instance-of v0, p0, Lkotlinx/coroutines/p0;

    if-eqz v0, :cond_4

    check-cast p0, Lkotlinx/coroutines/p0;

    .line 11
    iget-object v0, p0, Lkotlinx/coroutines/p0;->k:Lkotlinx/coroutines/z;

    invoke-virtual {p0}, Lkotlinx/coroutines/p0;->getContext()Lkotlin/coroutines/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/z;->b(Lkotlin/coroutines/f;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 12
    iput-object p1, p0, Lkotlinx/coroutines/p0;->h:Ljava/lang/Object;

    .line 13
    iput v1, p0, Lkotlinx/coroutines/r0;->g:I

    .line 14
    iget-object p1, p0, Lkotlinx/coroutines/p0;->k:Lkotlinx/coroutines/z;

    invoke-virtual {p0}, Lkotlinx/coroutines/p0;->getContext()Lkotlin/coroutines/f;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/z;->a(Lkotlin/coroutines/f;Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 15
    :cond_0
    sget-object v0, Lkotlinx/coroutines/a2;->b:Lkotlinx/coroutines/a2;

    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->a()Lkotlinx/coroutines/w0;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lkotlinx/coroutines/w0;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    iput-object p1, p0, Lkotlinx/coroutines/p0;->h:Ljava/lang/Object;

    .line 18
    iput v1, p0, Lkotlinx/coroutines/r0;->g:I

    .line 19
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/w0;->a(Lkotlinx/coroutines/r0;)V

    goto :goto_3

    .line 20
    :cond_1
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/w0;->b(Z)V

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/p0;->getContext()Lkotlin/coroutines/f;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/g1;->d:Lkotlinx/coroutines/g1$b;

    invoke-interface {v2, v3}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/g1;

    if-eqz v2, :cond_2

    .line 22
    invoke-interface {v2}, Lkotlinx/coroutines/g1;->i()Z

    move-result v3

    if-nez v3, :cond_2

    .line 23
    invoke-interface {v2}, Lkotlinx/coroutines/g1;->j()Ljava/util/concurrent/CancellationException;

    move-result-object v2

    sget-object v3, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {v2}, Lkotlin/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 24
    invoke-virtual {p0}, Lkotlinx/coroutines/p0;->getContext()Lkotlin/coroutines/f;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/coroutines/p0;->j:Ljava/lang/Object;

    .line 25
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/x;->b(Lkotlin/coroutines/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object v4, p0, Lkotlinx/coroutines/p0;->l:Lkotlin/coroutines/c;

    sget-object v5, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p1}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v4, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    .line 27
    sget-object p1, Lkotlin/t;->a:Lkotlin/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    throw p1

    .line 29
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/w0;->r()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_3

    goto :goto_2

    :catchall_1
    move-exception p1

    const/4 v2, 0x0

    .line 30
    :try_start_3
    invoke-virtual {p0, p1, v2}, Lkotlinx/coroutines/r0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 31
    :goto_2
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/w0;->a(Z)V

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/w0;->a(Z)V

    throw p0

    .line 32
    :cond_4
    sget-object v0, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p1}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public static final a(Lkotlin/coroutines/c;Ljava/lang/Throwable;)V
    .locals 7
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
            ")V"
        }
    .end annotation

    const-string v0, "$this$resumeCancellableWithException"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    instance-of v0, p0, Lkotlinx/coroutines/p0;

    if-eqz v0, :cond_4

    check-cast p0, Lkotlinx/coroutines/p0;

    .line 34
    iget-object v0, p0, Lkotlinx/coroutines/p0;->l:Lkotlin/coroutines/c;

    invoke-interface {v0}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v0

    .line 35
    new-instance v1, Lkotlinx/coroutines/r;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4, v2, v3}, Lkotlinx/coroutines/r;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/d/e;)V

    .line 36
    iget-object v5, p0, Lkotlinx/coroutines/p0;->k:Lkotlinx/coroutines/z;

    invoke-virtual {v5, v0}, Lkotlinx/coroutines/z;->b(Lkotlin/coroutines/f;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 37
    new-instance v1, Lkotlinx/coroutines/r;

    invoke-direct {v1, p1, v4, v2, v3}, Lkotlinx/coroutines/r;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/d/e;)V

    iput-object v1, p0, Lkotlinx/coroutines/p0;->h:Ljava/lang/Object;

    .line 38
    iput v6, p0, Lkotlinx/coroutines/r0;->g:I

    .line 39
    iget-object p1, p0, Lkotlinx/coroutines/p0;->k:Lkotlinx/coroutines/z;

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/z;->a(Lkotlin/coroutines/f;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 40
    :cond_0
    sget-object v0, Lkotlinx/coroutines/a2;->b:Lkotlinx/coroutines/a2;

    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->a()Lkotlinx/coroutines/w0;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lkotlinx/coroutines/w0;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    iput-object v1, p0, Lkotlinx/coroutines/p0;->h:Ljava/lang/Object;

    .line 43
    iput v6, p0, Lkotlinx/coroutines/r0;->g:I

    .line 44
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/w0;->a(Lkotlinx/coroutines/r0;)V

    goto/16 :goto_2

    .line 45
    :cond_1
    invoke-virtual {v0, v6}, Lkotlinx/coroutines/w0;->b(Z)V

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/p0;->getContext()Lkotlin/coroutines/f;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/g1;->d:Lkotlinx/coroutines/g1$b;

    invoke-interface {v1, v2}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/g1;

    if-eqz v1, :cond_2

    .line 47
    invoke-interface {v1}, Lkotlinx/coroutines/g1;->i()Z

    move-result v2

    if-nez v2, :cond_2

    .line 48
    invoke-interface {v1}, Lkotlinx/coroutines/g1;->j()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    sget-object v2, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {v1}, Lkotlin/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_3

    .line 49
    invoke-virtual {p0}, Lkotlinx/coroutines/p0;->getContext()Lkotlin/coroutines/f;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/coroutines/p0;->j:Ljava/lang/Object;

    .line 50
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/x;->b(Lkotlin/coroutines/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    iget-object v4, p0, Lkotlinx/coroutines/p0;->l:Lkotlin/coroutines/c;

    .line 52
    sget-object v5, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p1, v4}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Throwable;Lkotlin/coroutines/c;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v4, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    .line 53
    sget-object p1, Lkotlin/t;->a:Lkotlin/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    throw p1

    .line 55
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/w0;->r()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_3

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 56
    :try_start_3
    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/r0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 57
    :goto_1
    invoke-virtual {v0, v6}, Lkotlinx/coroutines/w0;->a(Z)V

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v6}, Lkotlinx/coroutines/w0;->a(Z)V

    throw p0

    .line 58
    :cond_4
    sget-object v0, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p1, p0}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Throwable;Lkotlin/coroutines/c;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private static final a(Lkotlinx/coroutines/r0;)V
    .locals 4
    .param p0    # Lkotlinx/coroutines/r0;
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

    .line 2
    sget-object v0, Lkotlinx/coroutines/a2;->b:Lkotlinx/coroutines/a2;

    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->a()Lkotlinx/coroutines/w0;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/w0;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/w0;->a(Lkotlinx/coroutines/r0;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/w0;->b(Z)V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/r0;->b()Lkotlin/coroutines/c;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p0, v2, v3}, Lkotlinx/coroutines/q0;->a(Lkotlinx/coroutines/r0;Lkotlin/coroutines/c;I)V

    .line 7
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/w0;->r()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    .line 8
    :try_start_1
    invoke-virtual {p0, v2, v3}, Lkotlinx/coroutines/r0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/w0;->a(Z)V

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/w0;->a(Z)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static final a(Lkotlinx/coroutines/r0;I)V
    .locals 3
    .param p0    # Lkotlinx/coroutines/r0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/r0<",
            "-TT;>;I)V"
        }
    .end annotation

    const-string v0, "$this$dispatch"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lkotlinx/coroutines/r0;->b()Lkotlin/coroutines/c;

    move-result-object v0

    .line 60
    invoke-static {p1}, Lkotlinx/coroutines/x1;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lkotlinx/coroutines/p0;

    if-eqz v1, :cond_1

    invoke-static {p1}, Lkotlinx/coroutines/x1;->a(I)Z

    move-result v1

    iget v2, p0, Lkotlinx/coroutines/r0;->g:I

    invoke-static {v2}, Lkotlinx/coroutines/x1;->a(I)Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 61
    move-object p1, v0

    check-cast p1, Lkotlinx/coroutines/p0;

    iget-object p1, p1, Lkotlinx/coroutines/p0;->k:Lkotlinx/coroutines/z;

    .line 62
    invoke-interface {v0}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/z;->b(Lkotlin/coroutines/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/z;->a(Lkotlin/coroutines/f;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/q0;->a(Lkotlinx/coroutines/r0;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/q0;->a(Lkotlinx/coroutines/r0;Lkotlin/coroutines/c;I)V

    :goto_0
    return-void
.end method

.method public static final a(Lkotlinx/coroutines/r0;Lkotlin/coroutines/c;I)V
    .locals 2
    .param p0    # Lkotlinx/coroutines/r0;
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
            "Lkotlinx/coroutines/r0<",
            "-TT;>;",
            "Lkotlin/coroutines/c<",
            "-TT;>;I)V"
        }
    .end annotation

    const-string v0, "$this$resume"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lkotlinx/coroutines/r0;->c()Ljava/lang/Object;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/r0;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {p1, v1, p2}, Lkotlinx/coroutines/x1;->a(Lkotlin/coroutines/c;Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/r0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lkotlinx/coroutines/x1;->a(Lkotlin/coroutines/c;Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method public static final b(Lkotlin/coroutines/c;Ljava/lang/Object;)V
    .locals 1
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
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "$this$resumeDirect"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/p0;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/p0;

    iget-object p0, p0, Lkotlinx/coroutines/p0;->l:Lkotlin/coroutines/c;

    sget-object v0, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p1}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p1}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(Lkotlin/coroutines/c;Ljava/lang/Throwable;)V
    .locals 1
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
            ")V"
        }
    .end annotation

    const-string v0, "$this$resumeDirectWithException"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p0, Lkotlinx/coroutines/p0;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/p0;

    iget-object p0, p0, Lkotlinx/coroutines/p0;->l:Lkotlin/coroutines/c;

    .line 4
    sget-object v0, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p1, p0}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Throwable;Lkotlin/coroutines/c;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {p1, p0}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Throwable;Lkotlin/coroutines/c;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
