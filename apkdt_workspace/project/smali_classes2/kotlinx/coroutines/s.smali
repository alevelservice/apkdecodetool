.class public final Lkotlinx/coroutines/s;
.super Ljava/lang/Object;
.source "CompletedExceptionally.kt"


# direct methods
.method public static final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlin/n;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlin/o;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/r;

    invoke-static {p0}, Lkotlin/n;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, p0, v2, v3, v1}, Lkotlinx/coroutines/r;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/d/e;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_1
    invoke-static {}, Lkotlin/jvm/d/h;->a()V

    throw v1
.end method
