.class public final Le/i/b/b/d/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/b/d/k$c;,
        Le/i/b/b/d/k$a;,
        Le/i/b/b/d/k$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Exception;)Le/i/b/b/d/h;
    .locals 1
    .param p0    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Le/i/b/b/d/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Le/i/b/b/d/c0;

    invoke-direct {v0}, Le/i/b/b/d/c0;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Le/i/b/b/d/c0;->a(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Le/i/b/b/d/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Le/i/b/b/d/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/i/b/b/d/c0;

    invoke-direct {v0}, Le/i/b/b/d/c0;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Le/i/b/b/d/c0;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Le/i/b/b/d/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Le/i/b/b/d/h<",
            "*>;>;)",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 28
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 29
    invoke-static {p0}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object p0

    return-object p0

    .line 30
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/i/b/b/d/h;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null tasks are not accepted"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_2
    new-instance v0, Le/i/b/b/d/c0;

    invoke-direct {v0}, Le/i/b/b/d/c0;-><init>()V

    .line 33
    new-instance v1, Le/i/b/b/d/k$c;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2, v0}, Le/i/b/b/d/k$c;-><init>(ILe/i/b/b/d/c0;)V

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/i/b/b/d/h;

    .line 35
    invoke-static {v2, v1}, Le/i/b/b/d/k;->a(Le/i/b/b/d/h;Le/i/b/b/d/k$b;)V

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;
    .locals 1
    .param p0    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Le/i/b/b/d/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 5
    sget-object v0, Le/i/b/b/d/j;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;
    .locals 2
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Le/i/b/b/d/h<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "Executor must not be null"

    .line 6
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Callback must not be null"

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Le/i/b/b/d/c0;

    invoke-direct {v0}, Le/i/b/b/d/c0;-><init>()V

    .line 9
    new-instance v1, Le/i/b/b/d/d0;

    invoke-direct {v1, v0, p1}, Le/i/b/b/d/d0;-><init>(Le/i/b/b/d/c0;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static varargs a([Le/i/b/b/d/h;)Le/i/b/b/d/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Le/i/b/b/d/h<",
            "*>;)",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 36
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 37
    invoke-static {p0}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object p0

    return-object p0

    .line 38
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Le/i/b/b/d/k;->a(Ljava/util/Collection;)Le/i/b/b/d/h;

    move-result-object p0

    return-object p0
.end method

.method public static a(Le/i/b/b/d/h;)Ljava/lang/Object;
    .locals 2
    .param p0    # Le/i/b/b/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Le/i/b/b/d/h<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/internal/m;->a()V

    const-string v0, "Task must not be null"

    .line 11
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Le/i/b/b/d/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p0}, Le/i/b/b/d/k;->b(Le/i/b/b/d/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 14
    :cond_0
    new-instance v0, Le/i/b/b/d/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/i/b/b/d/k$a;-><init>(Le/i/b/b/d/d0;)V

    .line 15
    invoke-static {p0, v0}, Le/i/b/b/d/k;->a(Le/i/b/b/d/h;Le/i/b/b/d/k$b;)V

    .line 16
    invoke-virtual {v0}, Le/i/b/b/d/k$a;->b()V

    .line 17
    invoke-static {p0}, Le/i/b/b/d/k;->b(Le/i/b/b/d/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Le/i/b/b/d/h;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p0    # Le/i/b/b/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Le/i/b/b/d/h<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/google/android/gms/common/internal/m;->a()V

    const-string v0, "Task must not be null"

    .line 19
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeUnit must not be null"

    .line 20
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Le/i/b/b/d/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p0}, Le/i/b/b/d/k;->b(Le/i/b/b/d/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    new-instance v0, Le/i/b/b/d/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/i/b/b/d/k$a;-><init>(Le/i/b/b/d/d0;)V

    .line 24
    invoke-static {p0, v0}, Le/i/b/b/d/k;->a(Le/i/b/b/d/h;Le/i/b/b/d/k$b;)V

    .line 25
    invoke-virtual {v0, p1, p2, p3}, Le/i/b/b/d/k$a;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    invoke-static {p0}, Le/i/b/b/d/k;->b(Le/i/b/b/d/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 27
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Le/i/b/b/d/h;Le/i/b/b/d/k$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/b/d/h<",
            "*>;",
            "Le/i/b/b/d/k$b;",
            ")V"
        }
    .end annotation

    .line 39
    sget-object v0, Le/i/b/b/d/j;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/e;)Le/i/b/b/d/h;

    .line 40
    sget-object v0, Le/i/b/b/d/j;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/d;)Le/i/b/b/d/h;

    .line 41
    sget-object v0, Le/i/b/b/d/j;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/b;)Le/i/b/b/d/h;

    return-void
.end method

.method private static b(Le/i/b/b/d/h;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Le/i/b/b/d/h<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/i/b/b/d/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/i/b/b/d/h;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/i/b/b/d/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Le/i/b/b/d/h;->a()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
