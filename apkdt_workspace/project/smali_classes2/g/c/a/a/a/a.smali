.class public final Lg/c/a/a/a/a;
.super Ljava/lang/Object;
.source "RxAndroidPlugins.java"


# static fields
.field private static volatile a:Lg/c/a/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/e/e<",
            "Ljava/util/concurrent/Callable<",
            "Lg/c/a/b/g;",
            ">;",
            "Lg/c/a/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lg/c/a/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/e/e<",
            "Lg/c/a/b/g;",
            "Lg/c/a/b/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a(Lg/c/a/b/g;)Lg/c/a/b/g;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lg/c/a/a/a/a;->b:Lg/c/a/e/e;

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {v0, p0}, Lg/c/a/a/a/a;->a(Lg/c/a/e/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/c/a/b/g;

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "scheduler == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Lg/c/a/e/e;Ljava/util/concurrent/Callable;)Lg/c/a/b/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/e/e<",
            "Ljava/util/concurrent/Callable<",
            "Lg/c/a/b/g;",
            ">;",
            "Lg/c/a/b/g;",
            ">;",
            "Ljava/util/concurrent/Callable<",
            "Lg/c/a/b/g;",
            ">;)",
            "Lg/c/a/b/g;"
        }
    .end annotation

    .line 7
    invoke-static {p0, p1}, Lg/c/a/a/a/a;->a(Lg/c/a/e/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/c/a/b/g;

    if-eqz p0, :cond_0

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Scheduler Callable returned null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/util/concurrent/Callable;)Lg/c/a/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lg/c/a/b/g;",
            ">;)",
            "Lg/c/a/b/g;"
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/c/a/b/g;

    if-eqz p0, :cond_0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Scheduler Callable returned null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lg/c/a/d/b;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0
.end method

.method static a(Lg/c/a/e/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    .line 9
    :try_start_0
    invoke-interface {p0, p1}, Lg/c/a/e/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    invoke-static {p0}, Lg/c/a/d/b;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0
.end method

.method public static b(Ljava/util/concurrent/Callable;)Lg/c/a/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lg/c/a/b/g;",
            ">;)",
            "Lg/c/a/b/g;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lg/c/a/a/a/a;->a:Lg/c/a/e/e;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lg/c/a/a/a/a;->a(Ljava/util/concurrent/Callable;)Lg/c/a/b/g;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {v0, p0}, Lg/c/a/a/a/a;->a(Lg/c/a/e/e;Ljava/util/concurrent/Callable;)Lg/c/a/b/g;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "scheduler == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
