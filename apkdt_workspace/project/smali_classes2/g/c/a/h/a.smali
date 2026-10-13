.class public final Lg/c/a/h/a;
.super Ljava/lang/Object;
.source "RxJavaPlugins.java"


# static fields
.field static volatile a:Lg/c/a/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/e/d<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/Nullable;
    .end annotation
.end field

.field static volatile b:Lg/c/a/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/e/e<",
            "-",
            "Ljava/lang/Runnable;",
            "+",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/Nullable;
    .end annotation
.end field

.field static volatile c:Lg/c/a/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/e/e<",
            "-",
            "Lg/c/a/e/h<",
            "Lg/c/a/b/g;",
            ">;+",
            "Lg/c/a/b/g;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/Nullable;
    .end annotation
.end field

.field static volatile d:Lg/c/a/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/e/e<",
            "-",
            "Lg/c/a/e/h<",
            "Lg/c/a/b/g;",
            ">;+",
            "Lg/c/a/b/g;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/Nullable;
    .end annotation
.end field

.field static volatile e:Lg/c/a/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/e/e<",
            "-",
            "Lg/c/a/e/h<",
            "Lg/c/a/b/g;",
            ">;+",
            "Lg/c/a/b/g;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/Nullable;
    .end annotation
.end field

.field static volatile f:Lg/c/a/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/e/e<",
            "-",
            "Lg/c/a/e/h<",
            "Lg/c/a/b/g;",
            ">;+",
            "Lg/c/a/b/g;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/Nullable;
    .end annotation
.end field

.field static volatile g:Lg/c/a/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/e/e<",
            "-",
            "Lg/c/a/b/g;",
            "+",
            "Lg/c/a/b/g;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/Nullable;
    .end annotation
.end field

.field static volatile h:Lg/c/a/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/e/e<",
            "-",
            "Lg/c/a/b/d;",
            "+",
            "Lg/c/a/b/d;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/Nullable;
    .end annotation
.end field

.field static volatile i:Lg/c/a/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/e/b<",
            "-",
            "Lg/c/a/b/d;",
            "-",
            "Lg/c/a/b/f;",
            "+",
            "Lg/c/a/b/f;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static a(Lg/c/a/b/d;)Lg/c/a/b/d;
    .locals 1
    .param p0    # Lg/c/a/b/d;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lg/c/a/b/d<",
            "TT;>;)",
            "Lg/c/a/b/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 14
    sget-object v0, Lg/c/a/h/a;->h:Lg/c/a/e/e;

    if-eqz v0, :cond_0

    .line 15
    invoke-static {v0, p0}, Lg/c/a/h/a;->a(Lg/c/a/e/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/c/a/b/d;

    :cond_0
    return-object p0
.end method

.method public static a(Lg/c/a/b/d;Lg/c/a/b/f;)Lg/c/a/b/f;
    .locals 1
    .param p0    # Lg/c/a/b/d;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .param p1    # Lg/c/a/b/f;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lg/c/a/b/d<",
            "TT;>;",
            "Lg/c/a/b/f<",
            "-TT;>;)",
            "Lg/c/a/b/f<",
            "-TT;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 12
    sget-object v0, Lg/c/a/h/a;->i:Lg/c/a/e/b;

    if-eqz v0, :cond_0

    .line 13
    invoke-static {v0, p0, p1}, Lg/c/a/h/a;->a(Lg/c/a/e/b;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/c/a/b/f;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static a(Lg/c/a/b/g;)Lg/c/a/b/g;
    .locals 1
    .param p0    # Lg/c/a/b/g;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 7
    sget-object v0, Lg/c/a/h/a;->g:Lg/c/a/e/e;

    if-nez v0, :cond_0

    return-object p0

    .line 8
    :cond_0
    invoke-static {v0, p0}, Lg/c/a/h/a;->a(Lg/c/a/e/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/c/a/b/g;

    return-object p0
.end method

.method static a(Lg/c/a/e/e;Lg/c/a/e/h;)Lg/c/a/b/g;
    .locals 0
    .param p0    # Lg/c/a/e/e;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/e/e<",
            "-",
            "Lg/c/a/e/h<",
            "Lg/c/a/b/g;",
            ">;+",
            "Lg/c/a/b/g;",
            ">;",
            "Lg/c/a/e/h<",
            "Lg/c/a/b/g;",
            ">;)",
            "Lg/c/a/b/g;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 22
    invoke-static {p0, p1}, Lg/c/a/h/a;->a(Lg/c/a/e/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Scheduler Supplier result can\'t be null"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/c/a/b/g;

    return-object p0
.end method

.method static a(Lg/c/a/e/h;)Lg/c/a/b/g;
    .locals 1
    .param p0    # Lg/c/a/e/h;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/e/h<",
            "Lg/c/a/b/g;",
            ">;)",
            "Lg/c/a/b/g;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 20
    :try_start_0
    invoke-interface {p0}, Lg/c/a/e/h;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Scheduler Supplier result can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/c/a/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 21
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static a(Lg/c/a/e/b;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lg/c/a/e/b;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lg/c/a/e/b<",
            "TT;TU;TR;>;TT;TU;)TR;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 18
    :try_start_0
    invoke-interface {p0, p1, p2}, Lg/c/a/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 19
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static a(Lg/c/a/e/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lg/c/a/e/e;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lg/c/a/e/e<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 16
    :try_start_0
    invoke-interface {p0, p1}, Lg/c/a/e/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 17
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    const-string v0, "run is null"

    .line 9
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lg/c/a/h/a;->b:Lg/c/a/e/e;

    if-nez v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-static {v0, p0}, Lg/c/a/h/a;->a(Lg/c/a/e/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method static a(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    instance-of v0, p0, Lg/c/a/d/d;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p0, Lg/c/a/d/c;

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_4

    return v1

    .line 6
    :cond_4
    instance-of p0, p0, Lg/c/a/d/a;

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lg/c/a/e/h;)Lg/c/a/b/g;
    .locals 1
    .param p0    # Lg/c/a/e/h;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/e/h<",
            "Lg/c/a/b/g;",
            ">;)",
            "Lg/c/a/b/g;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    const-string v0, "Scheduler Supplier can\'t be null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lg/c/a/h/a;->c:Lg/c/a/e/e;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lg/c/a/h/a;->a(Lg/c/a/e/h;)Lg/c/a/b/g;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {v0, p0}, Lg/c/a/h/a;->a(Lg/c/a/e/e;Lg/c/a/e/h;)Lg/c/a/b/g;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param

    .line 5
    sget-object v0, Lg/c/a/h/a;->a:Lg/c/a/e/d;

    if-nez p0, :cond_0

    const-string p0, "onError called with a null Throwable."

    .line 6
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/a;->a(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0}, Lg/c/a/h/a;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    new-instance v1, Lg/c/a/d/f;

    invoke-direct {v1, p0}, Lg/c/a/d/f;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 9
    :try_start_0
    invoke-interface {v0, p0}, Lg/c/a/e/d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    invoke-static {v0}, Lg/c/a/h/a;->c(Ljava/lang/Throwable;)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    invoke-static {p0}, Lg/c/a/h/a;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Lg/c/a/e/h;)Lg/c/a/b/g;
    .locals 1
    .param p0    # Lg/c/a/e/h;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/e/h<",
            "Lg/c/a/b/g;",
            ">;)",
            "Lg/c/a/b/g;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    const-string v0, "Scheduler Supplier can\'t be null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lg/c/a/h/a;->e:Lg/c/a/e/e;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lg/c/a/h/a;->a(Lg/c/a/e/h;)Lg/c/a/b/g;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {v0, p0}, Lg/c/a/h/a;->a(Lg/c/a/e/e;Lg/c/a/e/h;)Lg/c/a/b/g;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 7
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Lg/c/a/e/h;)Lg/c/a/b/g;
    .locals 1
    .param p0    # Lg/c/a/e/h;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/e/h<",
            "Lg/c/a/b/g;",
            ">;)",
            "Lg/c/a/b/g;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    const-string v0, "Scheduler Supplier can\'t be null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lg/c/a/h/a;->f:Lg/c/a/e/e;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lg/c/a/h/a;->a(Lg/c/a/e/h;)Lg/c/a/b/g;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {v0, p0}, Lg/c/a/h/a;->a(Lg/c/a/e/e;Lg/c/a/e/h;)Lg/c/a/b/g;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lg/c/a/e/h;)Lg/c/a/b/g;
    .locals 1
    .param p0    # Lg/c/a/e/h;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/e/h<",
            "Lg/c/a/b/g;",
            ">;)",
            "Lg/c/a/b/g;"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    const-string v0, "Scheduler Supplier can\'t be null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lg/c/a/h/a;->d:Lg/c/a/e/e;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lg/c/a/h/a;->a(Lg/c/a/e/h;)Lg/c/a/b/g;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {v0, p0}, Lg/c/a/h/a;->a(Lg/c/a/e/e;Lg/c/a/e/h;)Lg/c/a/b/g;

    move-result-object p0

    return-object p0
.end method
