.class public abstract Lkotlinx/coroutines/r0;
.super Lkotlinx/coroutines/f2/i;
.source "Dispatched.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/f2/i;"
    }
.end annotation


# instance fields
.field public g:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/f2/i;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/r0;->g:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/r;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lkotlinx/coroutines/r;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lkotlinx/coroutines/r;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "cause"

    invoke-static {p2, p1}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p1, p2}, Lkotlin/b;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    .line 3
    :goto_0
    new-instance p2, Lkotlinx/coroutines/i0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/i0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/r0;->b()Lkotlin/coroutines/c;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlinx/coroutines/b0;->a(Lkotlin/coroutines/f;Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_3
    invoke-static {}, Lkotlin/jvm/d/h;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public abstract b()Lkotlin/coroutines/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract c()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/f2/i;->f:Lkotlinx/coroutines/f2/j;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/r0;->b()Lkotlin/coroutines/c;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lkotlinx/coroutines/p0;

    .line 3
    iget-object v2, v1, Lkotlinx/coroutines/p0;->l:Lkotlin/coroutines/c;

    .line 4
    invoke-interface {v2}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v3

    .line 5
    iget v4, p0, Lkotlinx/coroutines/r0;->g:I

    invoke-static {v4}, Lkotlinx/coroutines/x1;->a(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    sget-object v4, Lkotlinx/coroutines/g1;->d:Lkotlinx/coroutines/g1$b;

    invoke-interface {v3, v4}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/g1;

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 6
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/r0;->c()Ljava/lang/Object;

    move-result-object v6

    .line 7
    iget-object v1, v1, Lkotlinx/coroutines/p0;->j:Ljava/lang/Object;

    .line 8
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/x;->b(Lkotlin/coroutines/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_1

    .line 9
    :try_start_1
    invoke-interface {v4}, Lkotlinx/coroutines/g1;->i()Z

    move-result v7

    if-nez v7, :cond_1

    .line 10
    invoke-interface {v4}, Lkotlinx/coroutines/g1;->j()Ljava/util/concurrent/CancellationException;

    move-result-object v4

    .line 11
    invoke-virtual {p0, v6, v4}, Lkotlinx/coroutines/r0;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 12
    sget-object v6, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {v4, v2}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Throwable;Lkotlin/coroutines/c;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lkotlin/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0, v6}, Lkotlinx/coroutines/r0;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 14
    sget-object v6, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {v4, v2}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Throwable;Lkotlin/coroutines/c;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lkotlin/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0, v6}, Lkotlinx/coroutines/r0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {v4}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    .line 16
    :goto_1
    sget-object v2, Lkotlin/t;->a:Lkotlin/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 18
    :try_start_3
    sget-object v1, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-interface {v0}, Lkotlinx/coroutines/f2/j;->l()V

    sget-object v0, Lkotlin/t;->a:Lkotlin/t;

    invoke-static {v0}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {v0}, Lkotlin/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    :goto_2
    invoke-static {v0}, Lkotlin/n;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lkotlinx/coroutines/r0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_1
    move-exception v2

    .line 20
    :try_start_4
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    throw v2

    .line 21
    :cond_3
    new-instance v1, Lkotlin/r;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>"

    invoke-direct {v1, v2}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    .line 22
    :try_start_5
    sget-object v2, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-interface {v0}, Lkotlinx/coroutines/f2/j;->l()V

    sget-object v0, Lkotlin/t;->a:Lkotlin/t;

    invoke-static {v0}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    sget-object v2, Lkotlin/n;->Companion:Lkotlin/n$a;

    invoke-static {v0}, Lkotlin/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/n;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    :goto_3
    invoke-static {v0}, Lkotlin/n;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/r0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method
