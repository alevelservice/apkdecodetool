.class public final Lcom/google/common/util/concurrent/g;
.super Ljava/lang/Object;
.source "SimpleTimeLimiter.java"

# interfaces
.implements Lcom/google/common/util/concurrent/i;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static synthetic a(Ljava/lang/Exception;Z)Ljava/lang/Exception;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/g;->b(Ljava/lang/Exception;Z)Ljava/lang/Exception;

    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/g;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Z)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/google/common/util/concurrent/g;->a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)TT;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p4}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p2, p3}, Lcom/google/common/util/concurrent/g;->a(J)V

    .line 6
    iget-object v0, p0, Lcom/google/common/util/concurrent/g;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    .line 7
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p1

    :catch_0
    move-exception p2

    .line 8
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 9
    throw p2

    .line 10
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/util/concurrent/k;->a(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p2

    .line 11
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 12
    new-instance p1, Lcom/google/common/util/concurrent/j;

    invoke-direct {p1, p2}, Lcom/google/common/util/concurrent/j;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    .line 13
    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/g;->b(Ljava/lang/Exception;Z)Ljava/lang/Exception;

    const/4 p1, 0x0

    throw p1
.end method

.method private static a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "timeout must be positive: %s"

    .line 14
    invoke-static {v0, v1, p0, p1}, Le/i/c/a/j;->a(ZLjava/lang/String;J)V

    return-void
.end method

.method private static b(Ljava/lang/Exception;Z)Ljava/lang/Exception;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const-class v2, Ljava/lang/StackTraceElement;

    invoke-static {p1, v1, v2}, Lcom/google/common/collect/a1;->a([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 4
    :cond_0
    instance-of p1, v0, Ljava/lang/Exception;

    if-nez p1, :cond_2

    .line 5
    instance-of p1, v0, Ljava/lang/Error;

    if-eqz p1, :cond_1

    .line 6
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 7
    :cond_1
    throw p0

    .line 8
    :cond_2
    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 9
    :cond_3
    throw p0
.end method
