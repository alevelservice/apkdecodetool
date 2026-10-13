.class public abstract Lg/c/a/b/d;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lg/c/a/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lg/c/a/b/e<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1
    .annotation runtime Lio/reactivex/rxjava3/annotations/CheckReturnValue;
    .end annotation

    .line 1
    invoke-static {}, Lg/c/a/b/b;->a()I

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lg/c/a/b/d;
    .locals 1
    .param p0    # Ljava/util/concurrent/Callable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lg/c/a/b/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/rxjava3/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .annotation runtime Lio/reactivex/rxjava3/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "callable is null"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lg/c/a/f/e/a/b;

    invoke-direct {v0, p0}, Lg/c/a/f/e/a/b;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lg/c/a/h/a;->a(Lg/c/a/b/d;)Lg/c/a/b/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lg/c/a/b/g;)Lg/c/a/b/d;
    .locals 2
    .param p1    # Lg/c/a/b/g;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/b/g;",
            ")",
            "Lg/c/a/b/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/rxjava3/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .annotation runtime Lio/reactivex/rxjava3/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 4
    invoke-static {}, Lg/c/a/b/d;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lg/c/a/b/d;->a(Lg/c/a/b/g;ZI)Lg/c/a/b/d;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lg/c/a/b/g;ZI)Lg/c/a/b/d;
    .locals 1
    .param p1    # Lg/c/a/b/g;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/b/g;",
            "ZI)",
            "Lg/c/a/b/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/rxjava3/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .annotation runtime Lio/reactivex/rxjava3/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 6
    invoke-static {p3, v0}, Lg/c/a/f/b/b;->a(ILjava/lang/String;)I

    .line 7
    new-instance v0, Lg/c/a/f/e/a/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lg/c/a/f/e/a/c;-><init>(Lg/c/a/b/e;Lg/c/a/b/g;ZI)V

    invoke-static {v0}, Lg/c/a/h/a;->a(Lg/c/a/b/d;)Lg/c/a/b/d;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lg/c/a/e/d;)Lg/c/a/c/c;
    .locals 2
    .param p1    # Lg/c/a/e/d;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/e/d<",
            "-TT;>;)",
            "Lg/c/a/c/c;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/rxjava3/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .annotation runtime Lio/reactivex/rxjava3/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 8
    sget-object v0, Lg/c/a/f/b/a;->d:Lg/c/a/e/d;

    sget-object v1, Lg/c/a/f/b/a;->b:Lg/c/a/e/a;

    invoke-virtual {p0, p1, v0, v1}, Lg/c/a/b/d;->a(Lg/c/a/e/d;Lg/c/a/e/d;Lg/c/a/e/a;)Lg/c/a/c/c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lg/c/a/e/d;Lg/c/a/e/d;Lg/c/a/e/a;)Lg/c/a/c/c;
    .locals 2
    .param p1    # Lg/c/a/e/d;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Lg/c/a/e/d;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .param p3    # Lg/c/a/e/a;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/e/d<",
            "-TT;>;",
            "Lg/c/a/e/d<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lg/c/a/e/a;",
            ")",
            "Lg/c/a/c/c;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/rxjava3/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .annotation runtime Lio/reactivex/rxjava3/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onNext is null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 10
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 11
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lg/c/a/f/d/c;

    invoke-static {}, Lg/c/a/f/b/a;->a()Lg/c/a/e/d;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lg/c/a/f/d/c;-><init>(Lg/c/a/e/d;Lg/c/a/e/d;Lg/c/a/e/a;Lg/c/a/e/d;)V

    .line 13
    invoke-virtual {p0, v0}, Lg/c/a/b/d;->a(Lg/c/a/b/f;)V

    return-object v0
.end method

.method public final a(Lg/c/a/b/f;)V
    .locals 2
    .param p1    # Lg/c/a/b/f;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/b/f<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lio/reactivex/rxjava3/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "observer is null"

    .line 14
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    :try_start_0
    invoke-static {p0, p1}, Lg/c/a/h/a;->a(Lg/c/a/b/d;Lg/c/a/b/f;)Lg/c/a/b/f;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 16
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p0, p1}, Lg/c/a/b/d;->b(Lg/c/a/b/f;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lg/c/a/d/b;->b(Ljava/lang/Throwable;)V

    .line 19
    invoke-static {p1}, Lg/c/a/h/a;->b(Ljava/lang/Throwable;)V

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 22
    throw v0

    :catch_0
    move-exception p1

    .line 23
    throw p1
.end method

.method public final b(Lg/c/a/b/g;)Lg/c/a/b/d;
    .locals 1
    .param p1    # Lg/c/a/b/g;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/b/g;",
            ")",
            "Lg/c/a/b/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/rxjava3/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .annotation runtime Lio/reactivex/rxjava3/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lg/c/a/f/e/a/d;

    invoke-direct {v0, p0, p1}, Lg/c/a/f/e/a/d;-><init>(Lg/c/a/b/e;Lg/c/a/b/g;)V

    invoke-static {v0}, Lg/c/a/h/a;->a(Lg/c/a/b/d;)Lg/c/a/b/d;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(Lg/c/a/b/f;)V
    .param p1    # Lg/c/a/b/f;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/b/f<",
            "-TT;>;)V"
        }
    .end annotation
.end method
