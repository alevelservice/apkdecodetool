.class final synthetic Lkotlinx/coroutines/l1;
.super Ljava/lang/Object;
.source "Job.kt"


# direct methods
.method public static final a(Lkotlinx/coroutines/g1;)Lkotlinx/coroutines/q;
    .locals 1
    .param p0    # Lkotlinx/coroutines/g1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/j1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/j1;-><init>(Lkotlinx/coroutines/g1;)V

    return-object v0
.end method

.method public static synthetic a(Lkotlinx/coroutines/g1;ILjava/lang/Object;)Lkotlinx/coroutines/q;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 2
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/k1;->a(Lkotlinx/coroutines/g1;)Lkotlinx/coroutines/q;

    move-result-object p0

    return-object p0
.end method
