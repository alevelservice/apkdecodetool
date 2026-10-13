.class public final Lcom/google/common/util/concurrent/c;
.super Lcom/google/common/util/concurrent/d;
.source "Futures.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/c$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 3
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v0, v1, p0}, Le/i/c/a/j;->b(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-static {p0}, Lcom/google/common/util/concurrent/k;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/b;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/e<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/b<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/c$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/c$a;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/b;)V

    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/e;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
